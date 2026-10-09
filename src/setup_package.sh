#!/bin/bash

ln -s "../../../src/{{Author(P)}}.{{Name(P)}}.Godot/addons/{{Author(P)}}.{{Name(P)}}" "{{Name(P)}}/sandbox/GodotApplication/addons/{{Author(P)}}.{{Name(P)}}"
ln -s "../../../src/{{Author(P)}}.{{Name(P)}}.Unity/Packages/com.{{Author(L)}}.{{Name(L)}}" "{{Name(P)}}/sandbox/UnityApplication/Packages/com.{{Author(L)}}.{{Name(L)}}"

rm -- "$0"
