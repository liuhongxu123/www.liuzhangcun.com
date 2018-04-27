<?php

namespace App\Admin\Extensions;

use Encore\Admin\Form\Field;

class PHPEditor extends Field
{
    protected $view = 'admin.php-editor';

    protected static $css = [
        '/packages/codemirror/codemirror-5.37.0/lib/codemirror.css',
    ];

    protected static $js = [
        '/packages/codemirror/codemirror-5.37.0/lib/codemirror.js',
        '/packages/codemirror/codemirror-5.37.0/addon/edit/matchbrackets.js',
        '/packages/codemirror/codemirror-5.37.0/mode/htmlmixed/htmlmixed.js',
        '/packages/codemirror/codemirror-5.37.0/mode/xml/xml.js',
        '/packages/codemirror/codemirror-5.37.0/mode/javascript/javascript.js',
        '/packages/codemirror/codemirror-5.37.0/mode/css/css.js',
        '/packages/codemirror/codemirror-5.37.0/mode/clike/clike.js',
        '/packages/codemirror/codemirror-5.37.0/mode/php/php.js',
    ];

    public function render()
    {
        $this->script = <<<EOT

CodeMirror.fromTextArea(document.getElementById("{$this->id}"), {
    lineNumbers: true,
    mode: "text/x-php",
    extraKeys: {
        "Tab": function(cm){
            cm.replaceSelection("    " , "end");
        }
     }
});

EOT;
        return parent::render();

    }
}