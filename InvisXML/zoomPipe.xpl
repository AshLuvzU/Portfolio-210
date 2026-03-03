<?xml version="1.0" encoding="UTF-8"?>
<p:declare-step name="zoomXMLoutput" xmlns:p="http://www.w3.org/ns/xproc"
    exclude-inline-prefixes="#all" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ex="extensions"
    xmlns:cx="http://xmlcalabash.com/ns/extensions" xmlns:c="http://www.w3.org/ns/xproc-step"
    version="3.0">
    <p:input port="source" primary="true" content-types="text/plain" href="zoom-transcript.txt"/>
    <p:invisible-xml cx:processor="markup-blitz">
        <p:with-input port="grammar">
            <p:document href="ebb-ZoomTranscript.ixml" content-type="text/plain"/>
        </p:with-input>
    </p:invisible-xml>
    <p:store name="zoomXML" href="zoomSimple.xml"/>
    <p:identity message="Stored some simple XML made by invisible XML grammar."/>
</p:declare-step>