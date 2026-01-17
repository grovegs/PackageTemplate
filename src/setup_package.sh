#!/bin/bash

#if (includeGodot)
ln -s "../../../src/{{Author(P)}}.{{Name(P)}}.Godot/addons/{{Author(P)}}.{{Name(P)}}" "{{Name(P)}}/sandbox/GodotApplication/addons/{{Author(P)}}.{{Name(P)}}"
#endif

#if (includeUnity)
ln -s "../../../src/{{Author(P)}}.{{Name(P)}}.Unity/Packages/com.{{Author(K)}}.{{Name(K)}}" "{{Name(P)}}/sandbox/UnityApplication/Packages/com.{{Author(K)}}.{{Name(K)}}"
#endif

rm -- "$0"
