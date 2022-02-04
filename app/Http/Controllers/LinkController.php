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

        $UniqueName = substr(md5(uniqid(rand(1,6))), 0, 8);

        return Link::create([
            'name' => $UniqueName, 
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

            $timeLife = strtotime($link->created_at) + strtotime($link->lifetime);

            dd($timeLife);

            if(strtotime($timeLife) > strtotime($link->lifetime)) {

                $link->update(['transitions' => $link->transitions + 1]);
            }else {
                $link->delete();
            }

        };

        return Redirect::to(htmlspecialchars($link->url ?? ''));
    }

}
