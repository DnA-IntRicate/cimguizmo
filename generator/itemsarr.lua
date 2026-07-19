local t={
  [1]={
    item="struct ImGuiWindow;",
    locat="ImGuizmo:119",
    re_name="vardef_re"},
  [2]={
    childs={
      [1]={
        item="\
    void SetDrawlist(ImDrawList* drawlist = nullptr);",
        locat="ImGuizmo:125",
        parent=nil,
        prevcomments="\
   // call inside your own window and before Manipulate() in order to draw gizmo to that window.\
   // Or pass a specific ImDrawList to draw to (e.g. ImGui::GetForegroundDrawList()).",
        re_name="function_re"},
      [2]={
        item="\
    void BeginFrame();",
        locat="ImGuizmo:128",
        parent=nil,
        prevcomments="   // call BeginFrame right after ImGui_XXXX_NewFrame();",
        re_name="function_re"},
      [3]={
        item="\
    void SetImGuiContext(ImGuiContext* ctx);",
        locat="ImGuizmo:134",
        parent=nil,
        prevcomments="   // this is necessary because when imguizmo is compiled into a dll, and imgui into another\
   // globals are not shared between them.\
   // More details at https://stackoverflow.com/questions/19373061/what-happens-to-global-and-static-variables-in-a-shared-library-when-it-is-dynam\
   // expose method to set imgui context",
        re_name="function_re"},
      [4]={
        item="\
    bool IsOver();",
        locat="ImGuizmo:137",
        parent=nil,
        prevcomments="   // return true if mouse cursor is over any gizmo control (axis, plan or screen component)",
        re_name="function_re"},
      [5]={
        item="\
    bool IsUsing();",
        locat="ImGuizmo:140",
        parent=nil,
        prevcomments="   // return true if mouse IsOver or if the gizmo is in moving state",
        re_name="function_re"},
      [6]={
        item="\
    bool IsUsingViewManipulate();",
        locat="ImGuizmo:143",
        parent=nil,
        prevcomments="   // return true if the view gizmo is in moving state",
        re_name="function_re"},
      [7]={
        item="\
    bool IsViewManipulateHovered();",
        locat="ImGuizmo:145",
        parent=nil,
        prevcomments="\
   // only check if your mouse is over the view manipulator - no matter whether it's active or not",
        re_name="function_re"},
      [8]={
        item="\
    bool IsUsingAny();",
        locat="ImGuizmo:148",
        parent=nil,
        prevcomments="   // return true if any gizmo is in moving state",
        re_name="function_re"},
      [9]={
        item="\
    void Enable(bool enable);",
        locat="ImGuizmo:152",
        parent=nil,
        prevcomments="   // enable/disable the gizmo. Stay in the state until next call to Enable.\
   // gizmo is rendered with gray half transparent color when disabled",
        re_name="function_re"},
      [10]={
        item="\
    void DecomposeMatrixToComponents(const float* matrix, float* translation, float* rotation, float* scale);",
        locat="ImGuizmo:166",
        parent=nil,
        prevcomments="   // helper functions for manualy editing translation/rotation/scale with an input float\
   // translation, rotation and scale float points to 3 floats each\
   // Angles are in degrees (more suitable for human editing)\
   // example:\
   // float matrixTranslation[3], matrixRotation[3], matrixScale[3];\
   // ImGuizmo::DecomposeMatrixToComponents(gizmoMatrix.m16, matrixTranslation, matrixRotation, matrixScale);\
   // ImGui::InputFloat3(\"Tr\", matrixTranslation, 3);\
   // ImGui::InputFloat3(\"Rt\", matrixRotation, 3);\
   // ImGui::InputFloat3(\"Sc\", matrixScale, 3);\
   // ImGuizmo::RecomposeMatrixFromComponents(matrixTranslation, matrixRotation, matrixScale, gizmoMatrix.m16);\
   //\
   // These functions have some numerical stability issues for now. Use with caution.",
        re_name="function_re"},
      [11]={
        item="\
    void RecomposeMatrixFromComponents(const float* translation, const float* rotation, const float* scale, float* matrix);",
        locat="ImGuizmo:167",
        parent=nil,
        re_name="function_re"},
      [12]={
        item="    void SetRect(float x, float y, float width, float height);",
        locat="ImGuizmo:169",
        parent=nil,
        re_name="function_re"},
      [13]={
        item="\
    void SetOrthographic(bool isOrthographic);",
        locat="ImGuizmo:171",
        parent=nil,
        prevcomments="\
   // default is false",
        re_name="function_re"},
      [14]={
        item="\
    void DrawAxes(const float* view, const float* projection, const float* matrices, int matrixCount);",
        locat="ImGuizmo:174",
        parent=nil,
        prevcomments="   // Render coordinate system axes (red X, green Y and blue Z). Usefull for debug/tests",
        re_name="function_re"},
      [15]={
        item="\
    void DrawCubes(const float* view, const float* projection, const float* matrices, int matrixCount);",
        locat="ImGuizmo:176",
        parent=nil,
        prevcomments="\
   // Render a cube with face color corresponding to face normal. Usefull for debug/tests",
        re_name="function_re"},
      [16]={
        item="\
    void DrawGrid(const float* view, const float* projection, const float* matrix, const float gridSize);",
        locat="ImGuizmo:177",
        parent=nil,
        re_name="function_re"},
      [17]={
        item="\
    void DrawGridCustom(const float* view, const float* projection, const float* matrix, const float gridSize, const float majorStep, const unsigned int subdivision);",
        locat="ImGuizmo:180",
        parent=nil,
        prevcomments="\
   // Render grid with customizable major line step and amount of segments between major lines.\
   // NOTE(m.wlasiuk) : calling this function with majorStep = 1.0f and subdivision = 1 is equivalent to DrawGrid in terms of the end result but performs more calculations",
        re_name="function_re"},
      [18]={
        item="\
    void DrawGridCustomColor(const float* view, const float* projection, const float* matrix, const float gridSize, const float majorStep, const unsigned int subdivision, const ImU32 majorCol, const ImU32 minorCol, const ImU32 centerCol);",
        locat="ImGuizmo:182",
        parent=nil,
        prevcomments="\
   // Render grid with customizable major line step and amount of segments between major lines and with possibility to set custom colors for major, minor and center lines",
        re_name="function_re"},
      [19]={
        item="\
   enum OPERATION\
   {\
      TRANSLATE_X      = (1u << 0),\
      TRANSLATE_Y      = (1u << 1),\
      TRANSLATE_Z      = (1u << 2),\
      ROTATE_X         = (1u << 3),\
      ROTATE_Y         = (1u << 4),\
      ROTATE_Z         = (1u << 5),\
      ROTATE_SCREEN    = (1u << 6),\
      SCALE_X          = (1u << 7),\
      SCALE_Y          = (1u << 8),\
      SCALE_Z          = (1u << 9),\
      BOUNDS           = (1u << 10),\
      SCALE_XU         = (1u << 11),\
      SCALE_YU         = (1u << 12),\
      SCALE_ZU         = (1u << 13),\
\
      TRANSLATE = TRANSLATE_X | TRANSLATE_Y | TRANSLATE_Z,\
      ROTATE = ROTATE_X | ROTATE_Y | ROTATE_Z | ROTATE_SCREEN,\
      SCALE = SCALE_X | SCALE_Y | SCALE_Z,\
      SCALEU = SCALE_XU | SCALE_YU | SCALE_ZU, // universal\
      UNIVERSAL = TRANSLATE | ROTATE | SCALEU\
   };",
        locat="ImGuizmo:188",
        parent=nil,
        prevcomments="   // call it when you want a gizmo\
   // Needs view and projection matrices.\
   // matrix parameter is the source matrix (where will be gizmo be drawn) and might be transformed by the function. Return deltaMatrix is optional\
   // translation is applied in world space",
        re_name="enum_re"},
      [20]={
        item="   inline OPERATION operator|(OPERATION lhs, OPERATION rhs)\
   {\
     return static_cast<OPERATION>(static_cast<int>(lhs) | static_cast<int>(rhs));\
   }",
        locat="ImGuizmo:212",
        parent=nil,
        re_name="functionD_re"},
      [21]={
        item="   enum MODE\
   {\
      LOCAL,\
      WORLD\
   };",
        locat="ImGuizmo:217",
        parent=nil,
        re_name="enum_re"},
      [22]={
        item="    bool Manipulate(const float* view, const float* projection, OPERATION operation, MODE mode, float* matrix, float* deltaMatrix = NULL, const float* snap = NULL, const float* localBounds = NULL, const float* boundsSnap = NULL);",
        locat="ImGuizmo:223",
        parent=nil,
        re_name="function_re"},
      [23]={
        item="\
    void ViewManipulate(float* view, float length, ImVec2 position, ImVec2 size, ImU32 backgroundColor);",
        locat="ImGuizmo:229",
        parent=nil,
        prevcomments="\
   //\
   // Please note that this cubeview is patented by Autodesk : https://patents.google.com/patent/US7782319B2/en\
   // It seems to be a defensive patent in the US. I don't think it will bring troubles using it as\
   // other software are using the same mechanics. But just in case, you are now warned!\
   //",
        re_name="function_re"},
      [24]={
        item="\
    void ViewManipulate(float* view, const float* projection, OPERATION operation, MODE mode, float* matrix, float length, ImVec2 position, ImVec2 size, ImU32 backgroundColor);",
        locat="ImGuizmo:232",
        parent=nil,
        prevcomments="   // use this version if you did not call Manipulate before and you are just using ViewManipulate",
        re_name="function_re"},
      [25]={
        item="    void SetAlternativeWindow(ImGuiWindow* window);",
        locat="ImGuizmo:234",
        parent=nil,
        re_name="function_re"},
      [26]={
        item="    void SetID(int id);",
        locat="ImGuizmo:237",
        parent=nil,
        re_name="function_re"},
      [27]={
        comments="// push string into the ID stack (will hash string).",
        item="\
\9 void          PushID(const char* str_id);",
        locat="ImGuizmo:250",
        parent=nil,
        prevcomments="\9// ID stack/scopes\
\9// Read the FAQ (docs/FAQ.md or http://dearimgui.org/faq) for more details about how ID are handled in dear imgui.\
\9// - Those questions are answered and impacted by understanding of the ID stack system:\
\9//   - \"Q: Why is my widget not reacting when I click on it?\"\
\9//   - \"Q: How can I have widgets with an empty label?\"\
\9//   - \"Q: How can I have multiple widgets with the same label?\"\
\9// - Short version: ID are hashes of the entire ID stack. If you are creating widgets in a loop you most likely\
\9//   want to push a unique identifier (e.g. object pointer, loop index) to uniquely differentiate them.\
\9// - You can also use the \"Label##foobar\" syntax within widget label to distinguish them from each others.\
\9// - In this header file we use the \"label\"/\"name\" terminology to denote a string that will be displayed + used as an ID,\
\9//   whereas \"str_id\" denote a string that is only used as an ID and not normally displayed.",
        re_name="function_re"},
      [28]={
        comments="// push string into the ID stack (will hash string).",
        item="\
\9 void          PushID(const char* str_id_begin, const char* str_id_end);",
        locat="ImGuizmo:251",
        parent=nil,
        re_name="function_re"},
      [29]={
        comments="// push pointer into the ID stack (will hash pointer).",
        item="\
\9 void          PushID(const void* ptr_id);",
        locat="ImGuizmo:252",
        parent=nil,
        re_name="function_re"},
      [30]={
        comments="// push integer into the ID stack (will hash integer).",
        item="\
\9 void          PushID(int int_id);",
        locat="ImGuizmo:253",
        parent=nil,
        re_name="function_re"},
      [31]={
        comments="// pop from the ID stack.",
        item="\
\9 void          PopID();",
        locat="ImGuizmo:254",
        parent=nil,
        re_name="function_re"},
      [32]={
        comments="// calculate unique ID (hash of whole ID stack + given parameter). e.g. if you want to query into ImGuiStorage yourself",
        item="\
\9 ImGuiID       GetID(const char* str_id);",
        locat="ImGuizmo:255",
        parent=nil,
        re_name="function_re"},
      [33]={
        item="\
\9 ImGuiID       GetID(const char* str_id_begin, const char* str_id_end);",
        locat="ImGuizmo:256",
        parent=nil,
        re_name="function_re"},
      [34]={
        item="\
\9 ImGuiID       GetID(const void* ptr_id);",
        locat="ImGuizmo:257",
        parent=nil,
        re_name="function_re"},
      [35]={
        item="\
    bool IsOver(OPERATION op);",
        locat="ImGuizmo:260",
        parent=nil,
        prevcomments="   // return true if the cursor is over the operation's gizmo",
        re_name="function_re"},
      [36]={
        item="\
    void SetGizmoSizeClipSpace(float value);",
        locat="ImGuizmo:261",
        parent=nil,
        re_name="function_re"},
      [37]={
        item="\
   enum MOVETYPE\
   {\
      MT_NONE,\
      MT_MOVE_X,\
      MT_MOVE_Y,\
      MT_MOVE_Z,\
      MT_MOVE_YZ,\
      MT_MOVE_ZX,\
      MT_MOVE_XY,\
      MT_MOVE_SCREEN,\
      MT_ROTATE_X,\
      MT_ROTATE_Y,\
      MT_ROTATE_Z,\
      MT_ROTATE_SCREEN,\
      MT_SCALE_X,\
      MT_SCALE_Y,\
      MT_SCALE_Z,\
      MT_SCALE_XYZ\
   };",
        locat="ImGuizmo:264",
        parent=nil,
        prevcomments="   // Handle type used by the translate/rotate/scale gizmos.",
        re_name="enum_re"},
      [38]={
        item="\
    MOVETYPE GetActiveHandleType();",
        locat="ImGuizmo:285",
        parent=nil,
        prevcomments="   // Returns which handle is actively being dragged, or MT_NONE.",
        re_name="function_re"},
      [39]={
        item="\
    MOVETYPE GetHoveredHandleType();",
        locat="ImGuizmo:287",
        parent=nil,
        prevcomments="\
   // Returns which handle is currently hovered, or MT_NONE.",
        re_name="function_re"},
      [40]={
        item="\
    MOVETYPE GetActiveMoveType();",
        locat="ImGuizmo:289",
        parent=nil,
        prevcomments="\
   // Aliases matching the MOVETYPE enum name.",
        re_name="function_re"},
      [41]={
        item="\
    MOVETYPE GetHoveredMoveType();",
        locat="ImGuizmo:290",
        parent=nil,
        re_name="function_re"},
      [42]={
        item="\
    void AllowAxisFlip(bool value);",
        locat="ImGuizmo:295",
        parent=nil,
        prevcomments="   // Allow axis to flip\
   // When true (default), the guizmo axis flip for better visibility\
   // When false, they always stay along the positive world/local axis",
        re_name="function_re"},
      [43]={
        item="\
    void SetAxisLimit(float value);",
        locat="ImGuizmo:298",
        parent=nil,
        prevcomments="   // Configure the limit where axis are hidden",
        re_name="function_re"},
      [44]={
        item="\
    void SetAxisMask(bool x, bool y, bool z);",
        locat="ImGuizmo:300",
        parent=nil,
        prevcomments="\
   // Set an axis mask to permanently hide a given axis (true -> hidden, false -> shown)",
        re_name="function_re"},
      [45]={
        item="\
    void SetPlaneLimit(float value);",
        locat="ImGuizmo:302",
        parent=nil,
        prevcomments="\
   // Configure the limit where planes are hiden",
        re_name="function_re"},
      [46]={
        item="\
    bool IsOver(float* position, float pixelRadius);",
        locat="ImGuizmo:304",
        parent=nil,
        prevcomments="\
   // from a x,y,z point in space and using Manipulation view/projection matrix, check if mouse is in pixel radius distance of that projected point",
        re_name="function_re"},
      [47]={
        item="\
    void ComputeMouseRay(const float* view, const float* projection, const ImVec2& mousePosition, const ImVec2& rectPosition, const ImVec2& rectSize, float* rayOrigin, float* rayDirection);",
        locat="ImGuizmo:309",
        parent=nil,
        prevcomments="   // Compute the world-space mouse picking ray from explicit inputs, without reading ImGui IO.\
   // Useful for tests/headless usage. view and projection are column-major float[16] (same\
   // layout as Manipulate). rayOrigin and rayDirection receive a float[3] each.",
        re_name="function_re"},
      [48]={
        item="   enum COLOR\
   {\
      DIRECTION_X,      // directionColor[0]\
      DIRECTION_Y,      // directionColor[1]\
      DIRECTION_Z,      // directionColor[2]\
      PLANE_X,          // planeColor[0]\
      PLANE_Y,          // planeColor[1]\
      PLANE_Z,          // planeColor[2]\
      SELECTION,        // selectionColor\
      INACTIVE,         // inactiveColor\
      TRANSLATION_LINE, // translationLineColor\
      SCALE_LINE,\
      ROTATION_USING_BORDER,\
      ROTATION_USING_FILL,\
      HATCHED_AXIS_LINES,\
      TEXT,\
      TEXT_SHADOW,\
      COUNT\
   };",
        locat="ImGuizmo:311",
        parent=nil,
        re_name="enum_re"},
      [49]={
        childs={
          [1]={
            item="\
       Style();",
            locat="ImGuizmo:333",
            parent=nil,
            re_name="function_re"},
          [2]={
            comments="// Thickness of lines for translation gizmo",
            item="      float TranslationLineThickness;",
            locat="ImGuizmo:335",
            parent=nil,
            re_name="vardef_re"},
          [3]={
            comments="// Size of arrow at the end of lines for translation gizmo",
            item="\
      float TranslationLineArrowSize;",
            locat="ImGuizmo:336",
            parent=nil,
            re_name="vardef_re"},
          [4]={
            comments="// Thickness of lines for rotation gizmo",
            item="\
      float RotationLineThickness;",
            locat="ImGuizmo:337",
            parent=nil,
            re_name="vardef_re"},
          [5]={
            comments="// Thickness of line surrounding the rotation gizmo",
            item="\
      float RotationOuterLineThickness;",
            locat="ImGuizmo:338",
            parent=nil,
            re_name="vardef_re"},
          [6]={
            comments="// Thickness of lines for scale gizmo",
            item="\
      float ScaleLineThickness;",
            locat="ImGuizmo:339",
            parent=nil,
            re_name="vardef_re"},
          [7]={
            comments="// Size of circle at the end of lines for scale gizmo",
            item="\
      float ScaleLineCircleSize;",
            locat="ImGuizmo:340",
            parent=nil,
            re_name="vardef_re"},
          [8]={
            comments="// Thickness of hatched axis lines",
            item="\
      float HatchedAxisLineThickness;",
            locat="ImGuizmo:341",
            parent=nil,
            re_name="vardef_re"},
          [9]={
            comments="// Size of circle at the center of the translate/scale gizmo",
            item="\
      float CenterCircleSize;",
            locat="ImGuizmo:342",
            parent=nil,
            re_name="vardef_re"},
          [10]={
            item="      ImVec4 Colors[COLOR::COUNT];",
            locat="ImGuizmo:344",
            parent=nil,
            re_name="vardef_re"}},
        item="   struct Style\
   {\
       Style();\
\
      float TranslationLineThickness;   // Thickness of lines for translation gizmo\
      float TranslationLineArrowSize;   // Size of arrow at the end of lines for translation gizmo\
      float RotationLineThickness;      // Thickness of lines for rotation gizmo\
      float RotationOuterLineThickness; // Thickness of line surrounding the rotation gizmo\
      float ScaleLineThickness;         // Thickness of lines for scale gizmo\
      float ScaleLineCircleSize;        // Size of circle at the end of lines for scale gizmo\
      float HatchedAxisLineThickness;   // Thickness of hatched axis lines\
      float CenterCircleSize;           // Size of circle at the center of the translate/scale gizmo\
\
      ImVec4 Colors[COLOR::COUNT];\
   };",
        locat="ImGuizmo:331",
        name="Style",
        parent=nil,
        re_name="struct_re"},
      [50]={
        item="    Style& GetStyle();",
        locat="ImGuizmo:347",
        parent=nil,
        re_name="function_re"}},
    item="namespace ImGuizmo\
{\
   // call inside your own window and before Manipulate() in order to draw gizmo to that window.\
   // Or pass a specific ImDrawList to draw to (e.g. ImGui::GetForegroundDrawList()).\
    void SetDrawlist(ImDrawList* drawlist = nullptr);\
\
   // call BeginFrame right after ImGui_XXXX_NewFrame();\
    void BeginFrame();\
\
   // this is necessary because when imguizmo is compiled into a dll, and imgui into another\
   // globals are not shared between them.\
   // More details at https://stackoverflow.com/questions/19373061/what-happens-to-global-and-static-variables-in-a-shared-library-when-it-is-dynam\
   // expose method to set imgui context\
    void SetImGuiContext(ImGuiContext* ctx);\
\
   // return true if mouse cursor is over any gizmo control (axis, plan or screen component)\
    bool IsOver();\
\
   // return true if mouse IsOver or if the gizmo is in moving state\
    bool IsUsing();\
\
   // return true if the view gizmo is in moving state\
    bool IsUsingViewManipulate();\
   // only check if your mouse is over the view manipulator - no matter whether it's active or not\
    bool IsViewManipulateHovered();\
\
   // return true if any gizmo is in moving state\
    bool IsUsingAny();\
\
   // enable/disable the gizmo. Stay in the state until next call to Enable.\
   // gizmo is rendered with gray half transparent color when disabled\
    void Enable(bool enable);\
\
   // helper functions for manualy editing translation/rotation/scale with an input float\
   // translation, rotation and scale float points to 3 floats each\
   // Angles are in degrees (more suitable for human editing)\
   // example:\
   // float matrixTranslation[3], matrixRotation[3], matrixScale[3];\
   // ImGuizmo::DecomposeMatrixToComponents(gizmoMatrix.m16, matrixTranslation, matrixRotation, matrixScale);\
   // ImGui::InputFloat3(\"Tr\", matrixTranslation, 3);\
   // ImGui::InputFloat3(\"Rt\", matrixRotation, 3);\
   // ImGui::InputFloat3(\"Sc\", matrixScale, 3);\
   // ImGuizmo::RecomposeMatrixFromComponents(matrixTranslation, matrixRotation, matrixScale, gizmoMatrix.m16);\
   //\
   // These functions have some numerical stability issues for now. Use with caution.\
    void DecomposeMatrixToComponents(const float* matrix, float* translation, float* rotation, float* scale);\
    void RecomposeMatrixFromComponents(const float* translation, const float* rotation, const float* scale, float* matrix);\
\
    void SetRect(float x, float y, float width, float height);\
   // default is false\
    void SetOrthographic(bool isOrthographic);\
\
   // Render coordinate system axes (red X, green Y and blue Z). Usefull for debug/tests\
    void DrawAxes(const float* view, const float* projection, const float* matrices, int matrixCount);\
   // Render a cube with face color corresponding to face normal. Usefull for debug/tests\
    void DrawCubes(const float* view, const float* projection, const float* matrices, int matrixCount);\
    void DrawGrid(const float* view, const float* projection, const float* matrix, const float gridSize);\
   // Render grid with customizable major line step and amount of segments between major lines.\
   // NOTE(m.wlasiuk) : calling this function with majorStep = 1.0f and subdivision = 1 is equivalent to DrawGrid in terms of the end result but performs more calculations\
    void DrawGridCustom(const float* view, const float* projection, const float* matrix, const float gridSize, const float majorStep, const unsigned int subdivision);\
   // Render grid with customizable major line step and amount of segments between major lines and with possibility to set custom colors for major, minor and center lines\
    void DrawGridCustomColor(const float* view, const float* projection, const float* matrix, const float gridSize, const float majorStep, const unsigned int subdivision, const ImU32 majorCol, const ImU32 minorCol, const ImU32 centerCol);\
\
   // call it when you want a gizmo\
   // Needs view and projection matrices.\
   // matrix parameter is the source matrix (where will be gizmo be drawn) and might be transformed by the function. Return deltaMatrix is optional\
   // translation is applied in world space\
   enum OPERATION\
   {\
      TRANSLATE_X      = (1u << 0),\
      TRANSLATE_Y      = (1u << 1),\
      TRANSLATE_Z      = (1u << 2),\
      ROTATE_X         = (1u << 3),\
      ROTATE_Y         = (1u << 4),\
      ROTATE_Z         = (1u << 5),\
      ROTATE_SCREEN    = (1u << 6),\
      SCALE_X          = (1u << 7),\
      SCALE_Y          = (1u << 8),\
      SCALE_Z          = (1u << 9),\
      BOUNDS           = (1u << 10),\
      SCALE_XU         = (1u << 11),\
      SCALE_YU         = (1u << 12),\
      SCALE_ZU         = (1u << 13),\
\
      TRANSLATE = TRANSLATE_X | TRANSLATE_Y | TRANSLATE_Z,\
      ROTATE = ROTATE_X | ROTATE_Y | ROTATE_Z | ROTATE_SCREEN,\
      SCALE = SCALE_X | SCALE_Y | SCALE_Z,\
      SCALEU = SCALE_XU | SCALE_YU | SCALE_ZU, // universal\
      UNIVERSAL = TRANSLATE | ROTATE | SCALEU\
   };\
\
   inline OPERATION operator|(OPERATION lhs, OPERATION rhs)\
   {\
     return static_cast<OPERATION>(static_cast<int>(lhs) | static_cast<int>(rhs));\
   }\
\
   enum MODE\
   {\
      LOCAL,\
      WORLD\
   };\
\
    bool Manipulate(const float* view, const float* projection, OPERATION operation, MODE mode, float* matrix, float* deltaMatrix = NULL, const float* snap = NULL, const float* localBounds = NULL, const float* boundsSnap = NULL);\
   //\
   // Please note that this cubeview is patented by Autodesk : https://patents.google.com/patent/US7782319B2/en\
   // It seems to be a defensive patent in the US. I don't think it will bring troubles using it as\
   // other software are using the same mechanics. But just in case, you are now warned!\
   //\
    void ViewManipulate(float* view, float length, ImVec2 position, ImVec2 size, ImU32 backgroundColor);\
\
   // use this version if you did not call Manipulate before and you are just using ViewManipulate\
    void ViewManipulate(float* view, const float* projection, OPERATION operation, MODE mode, float* matrix, float length, ImVec2 position, ImVec2 size, ImU32 backgroundColor);\
\
    void SetAlternativeWindow(ImGuiWindow* window);\
\
   \
    void SetID(int id);\
\
\9// ID stack/scopes\
\9// Read the FAQ (docs/FAQ.md or http://dearimgui.org/faq) for more details about how ID are handled in dear imgui.\
\9// - Those questions are answered and impacted by understanding of the ID stack system:\
\9//   - \"Q: Why is my widget not reacting when I click on it?\"\
\9//   - \"Q: How can I have widgets with an empty label?\"\
\9//   - \"Q: How can I have multiple widgets with the same label?\"\
\9// - Short version: ID are hashes of the entire ID stack. If you are creating widgets in a loop you most likely\
\9//   want to push a unique identifier (e.g. object pointer, loop index) to uniquely differentiate them.\
\9// - You can also use the \"Label##foobar\" syntax within widget label to distinguish them from each others.\
\9// - In this header file we use the \"label\"/\"name\" terminology to denote a string that will be displayed + used as an ID,\
\9//   whereas \"str_id\" denote a string that is only used as an ID and not normally displayed.\
\9 void          PushID(const char* str_id);                                     // push string into the ID stack (will hash string).\
\9 void          PushID(const char* str_id_begin, const char* str_id_end);       // push string into the ID stack (will hash string).\
\9 void          PushID(const void* ptr_id);                                     // push pointer into the ID stack (will hash pointer).\
\9 void          PushID(int int_id);                                             // push integer into the ID stack (will hash integer).\
\9 void          PopID();                                                        // pop from the ID stack.\
\9 ImGuiID       GetID(const char* str_id);                                      // calculate unique ID (hash of whole ID stack + given parameter). e.g. if you want to query into ImGuiStorage yourself\
\9 ImGuiID       GetID(const char* str_id_begin, const char* str_id_end);\
\9 ImGuiID       GetID(const void* ptr_id);\
\
   // return true if the cursor is over the operation's gizmo\
    bool IsOver(OPERATION op);\
    void SetGizmoSizeClipSpace(float value);\
\
   // Handle type used by the translate/rotate/scale gizmos.\
   enum MOVETYPE\
   {\
      MT_NONE,\
      MT_MOVE_X,\
      MT_MOVE_Y,\
      MT_MOVE_Z,\
      MT_MOVE_YZ,\
      MT_MOVE_ZX,\
      MT_MOVE_XY,\
      MT_MOVE_SCREEN,\
      MT_ROTATE_X,\
      MT_ROTATE_Y,\
      MT_ROTATE_Z,\
      MT_ROTATE_SCREEN,\
      MT_SCALE_X,\
      MT_SCALE_Y,\
      MT_SCALE_Z,\
      MT_SCALE_XYZ\
   };\
\
   // Returns which handle is actively being dragged, or MT_NONE.\
    MOVETYPE GetActiveHandleType();\
   // Returns which handle is currently hovered, or MT_NONE.\
    MOVETYPE GetHoveredHandleType();\
   // Aliases matching the MOVETYPE enum name.\
    MOVETYPE GetActiveMoveType();\
    MOVETYPE GetHoveredMoveType();\
\
   // Allow axis to flip\
   // When true (default), the guizmo axis flip for better visibility\
   // When false, they always stay along the positive world/local axis\
    void AllowAxisFlip(bool value);\
\
   // Configure the limit where axis are hidden\
    void SetAxisLimit(float value);\
   // Set an axis mask to permanently hide a given axis (true -> hidden, false -> shown)\
    void SetAxisMask(bool x, bool y, bool z);\
   // Configure the limit where planes are hiden\
    void SetPlaneLimit(float value);\
   // from a x,y,z point in space and using Manipulation view/projection matrix, check if mouse is in pixel radius distance of that projected point\
    bool IsOver(float* position, float pixelRadius);\
\
   // Compute the world-space mouse picking ray from explicit inputs, without reading ImGui IO.\
   // Useful for tests/headless usage. view and projection are column-major float[16] (same\
   // layout as Manipulate). rayOrigin and rayDirection receive a float[3] each.\
    void ComputeMouseRay(const float* view, const float* projection, const ImVec2& mousePosition, const ImVec2& rectPosition, const ImVec2& rectSize, float* rayOrigin, float* rayDirection);\
\
   enum COLOR\
   {\
      DIRECTION_X,      // directionColor[0]\
      DIRECTION_Y,      // directionColor[1]\
      DIRECTION_Z,      // directionColor[2]\
      PLANE_X,          // planeColor[0]\
      PLANE_Y,          // planeColor[1]\
      PLANE_Z,          // planeColor[2]\
      SELECTION,        // selectionColor\
      INACTIVE,         // inactiveColor\
      TRANSLATION_LINE, // translationLineColor\
      SCALE_LINE,\
      ROTATION_USING_BORDER,\
      ROTATION_USING_FILL,\
      HATCHED_AXIS_LINES,\
      TEXT,\
      TEXT_SHADOW,\
      COUNT\
   };\
\
   struct Style\
   {\
       Style();\
\
      float TranslationLineThickness;   // Thickness of lines for translation gizmo\
      float TranslationLineArrowSize;   // Size of arrow at the end of lines for translation gizmo\
      float RotationLineThickness;      // Thickness of lines for rotation gizmo\
      float RotationOuterLineThickness; // Thickness of line surrounding the rotation gizmo\
      float ScaleLineThickness;         // Thickness of lines for scale gizmo\
      float ScaleLineCircleSize;        // Size of circle at the end of lines for scale gizmo\
      float HatchedAxisLineThickness;   // Thickness of hatched axis lines\
      float CenterCircleSize;           // Size of circle at the center of the translate/scale gizmo\
\
      ImVec4 Colors[COLOR::COUNT];\
   };\
\
    Style& GetStyle();\
}",
    locat="ImGuizmo:121",
    name="ImGuizmo",
    re_name="namespace_re"}}
t[2].childs[1].parent=t[2]
t[2].childs[2].parent=t[2]
t[2].childs[3].parent=t[2]
t[2].childs[4].parent=t[2]
t[2].childs[5].parent=t[2]
t[2].childs[6].parent=t[2]
t[2].childs[7].parent=t[2]
t[2].childs[8].parent=t[2]
t[2].childs[9].parent=t[2]
t[2].childs[10].parent=t[2]
t[2].childs[11].parent=t[2]
t[2].childs[12].parent=t[2]
t[2].childs[13].parent=t[2]
t[2].childs[14].parent=t[2]
t[2].childs[15].parent=t[2]
t[2].childs[16].parent=t[2]
t[2].childs[17].parent=t[2]
t[2].childs[18].parent=t[2]
t[2].childs[19].parent=t[2]
t[2].childs[20].parent=t[2]
t[2].childs[21].parent=t[2]
t[2].childs[22].parent=t[2]
t[2].childs[23].parent=t[2]
t[2].childs[24].parent=t[2]
t[2].childs[25].parent=t[2]
t[2].childs[26].parent=t[2]
t[2].childs[27].parent=t[2]
t[2].childs[28].parent=t[2]
t[2].childs[29].parent=t[2]
t[2].childs[30].parent=t[2]
t[2].childs[31].parent=t[2]
t[2].childs[32].parent=t[2]
t[2].childs[33].parent=t[2]
t[2].childs[34].parent=t[2]
t[2].childs[35].parent=t[2]
t[2].childs[36].parent=t[2]
t[2].childs[37].parent=t[2]
t[2].childs[38].parent=t[2]
t[2].childs[39].parent=t[2]
t[2].childs[40].parent=t[2]
t[2].childs[41].parent=t[2]
t[2].childs[42].parent=t[2]
t[2].childs[43].parent=t[2]
t[2].childs[44].parent=t[2]
t[2].childs[45].parent=t[2]
t[2].childs[46].parent=t[2]
t[2].childs[47].parent=t[2]
t[2].childs[48].parent=t[2]
t[2].childs[49].childs[1].parent=t[2].childs[49]
t[2].childs[49].childs[2].parent=t[2].childs[49]
t[2].childs[49].childs[3].parent=t[2].childs[49]
t[2].childs[49].childs[4].parent=t[2].childs[49]
t[2].childs[49].childs[5].parent=t[2].childs[49]
t[2].childs[49].childs[6].parent=t[2].childs[49]
t[2].childs[49].childs[7].parent=t[2].childs[49]
t[2].childs[49].childs[8].parent=t[2].childs[49]
t[2].childs[49].childs[9].parent=t[2].childs[49]
t[2].childs[49].childs[10].parent=t[2].childs[49]
t[2].childs[49].parent=t[2]
t[2].childs[50].parent=t[2]
 return t