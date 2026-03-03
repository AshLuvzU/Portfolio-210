<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" xmlns:c="http://www.w3.org/ns/xproc-step"
    version="3.0" name="my-pipeline">
    <p:input port="source">
        <p:inline>
            <doc>Hello world!</doc>
        </p:inline>
    </p:input>
    <p:input port="images" sequence="true">
        <p:inline>
            <image src="fairy.jpg"/>
        </p:inline>
    </p:input>
    <p:output port="result"/>
    <p:insert match="/doc" position="last-child">
        <p:with-input port="insertion" 
            pipe="images@my-pipeline"/>
    </p:insert>    
    <p:identity/>
</p:declare-step>
