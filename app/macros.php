<?php

namespace App\Macros;

class FormMacros
{
    public static function htmlBefore($name, $label, $errors, $labelClass = '')
    {
        $e = false;
        if ($errors && $errors->has($name)) {
            $e = true;
        }
        $html = array('<div class="form-group row' . ($e ? ' has-error' : '') . '">');
        $html []= '<label class="col-md-4 control-label' . ($labelClass ? ' ' . $labelClass : '') . '">' . \Lang::get($label) . '</label>';
        $html []= '<div class="col-md-6">';

        return implode('', $html);
    }

    public static function htmlAfter($name, $errors)
    {
        $html = array();
        if ($errors && $errors->has($name)) {
            $html []= '<div class="help-block">' . $errors->first($name) . '</div>';
        }
        $html []= '</div></div>';

        return implode('', $html);
    }

}

\Form::macro('htext', function ($name, $label, $value = null, $id = null, $labelClass = null, $inputClass = null) {
    $errors = \Session::get('errors');

    echo FormMacros::htmlBefore($name, $label, $errors, $labelClass) .
        \Form::text($name, $value, ['id' => $id, 'class' => 'form-control' . ($inputClass ? ' ' . $inputClass : ''), 'placeholder' => $label]) .
        FormMacros::htmlAfter($name, $errors);
});

\Form::macro('hpassword', function ($name, $label, $id = null, $labelClass = null, $inputClass = null) {
    $errors = \Session::get('errors');

    echo FormMacros::htmlBefore($name, $label, $errors, $labelClass) .
        \Form::password($name, ['id' => $id, 'class' => 'form-control' . ($inputClass ? ' ' . $inputClass : ''), 'placeholder' => $label]) .
        FormMacros::htmlAfter($name, $errors);
});

\Form::macro('hsubmit', function ($label) {
    echo '<div class="form-group row">
    <div class="col-md-offset-4 col-md-8">
        <button type="submit" class="btn btn-success">' . \Lang::get($label) . '</button>
    </div>
</div>';
});