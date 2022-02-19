<?php

namespace App\Notifications;

use Illuminate\Auth\Notifications\ResetPassword as Notification;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Support\Facades\Lang;

class ResetPasswordNotification extends Notification
{
    /**
     * Get the reset password notification mail message for the given URL.
     *
     * @param  string  $url
     * @return MailMessage
     */

    public function toMail($notifiable)
    {
        $link = url(config('app.url') . '/reset-password/' . $this->token) . '?email=' . urlencode($notifiable->email);

        return (new MailMessage)
            ->view('emails.reset-password', ['data' => ['link' => $link]])
            ->subject(Lang::get('Сброс пароля'));
    }
}
