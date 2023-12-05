<?php

namespace App\Classes;

class DummyLLM2
{
    protected  $data = [ "DummyLLM2: That's an interesting question.",
        "DummyLLM2: I'm not sure about the answer.",
        "DummyLLM2: Ask me anything else.",
        "DummyLLM2: Let me ponder on that.",
        "DummyLLM2: Hmm, I need more data to answer that.",
        "DummyLLM2: I'm a different dummy DummyLLM2 with unique responses."];
    public function getResponse($query){
        $val = rand(0, 5);
        return $this->data[$val];
    }



}
