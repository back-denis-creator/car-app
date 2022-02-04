<?php

namespace App\Http\Controllers;

use App\Models\Link;
use App\Transformers\LinkTransformer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class LinkController extends Controller
{

    public function index()
    {
        $links = Link::all();

        return fractal()
        ->collection($links)
        ->transformWith(new LinkTransformer())
        ->toArray();
    }

    public function store(Request $request)
    {
        $request->validate([
            'url' => 'required',
            'lifetime' => 'required',
        ]);

        $uniqueName = substr(md5(uniqid(rand(1,6))), 0, 8);

        return Link::create([
            'name' => $uniqueName, 
            'url' => htmlspecialchars($request->url), 
            'lifetime' => $request->lifetime
        ]);
    }

    /**
     * Перенаправление и увеличение счетчика
     *
     * @param string $name
     * @return \Illuminate\Http\Response
     */
    public function redirect($name)
    {
        $link = Link::where('name', $name)->get()->first() ?? null;

        if(!empty($link)) { 

            //Время которое уже прожила ссылка
            $timeLife = time() - strtotime($link->created_at);
   
            //Время жизни -> unix
            $unixTimeLife = explode(":", $link->lifetime);
            $unixTimeLife[0] = $unixTimeLife[0] * 60 * 60;
            $unixTimeLife[1] = $unixTimeLife[1] * 60;
            $unixTimeLife = $unixTimeLife[0] + $unixTimeLife[1] + $unixTimeLife[2];

            //Если ссылка прожила больше, положенного ей времени
            if($timeLife < $unixTimeLife) {
                $link->update(['transitions' => $link->transitions + 1]);
            }else {
                $link->delete();
            }

        };

        return Redirect::to(htmlspecialchars($link->url ?? ''));
    }

}
