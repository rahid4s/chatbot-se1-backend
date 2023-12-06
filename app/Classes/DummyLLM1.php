<?php

namespace App\Classes;

class DummyLLM1
{
    protected  $data = [ "DummyLLM1: That's an interesting question.",
        "DummyLLM1: I'm not sure about the answer.",
        "DummyLLM1: Ask me anything else.",
        "DummyLLM1: Let me ponder on that.",
        "DummyLLM1: Hmm, I need more data to answer that.",
        "DummyLLM1: I'm a different dummy DummyLLM2 with unique responses."];
    public function getResponse($query){
        $val = rand(0, 5);
        return $this->data[$val];
    }
}
