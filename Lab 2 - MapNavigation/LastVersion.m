function varargout = LastVersion(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LastVersion_OpeningFcn, ...
                   'gui_OutputFcn',  @LastVersion_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end

function LastVersion_OpeningFcn(hObject, ~, handles, varargin)
handles.output = hObject;
guidata(hObject, handles);
global G;
global M;
global Names;
global NewOnes;
M = dlmread('data.txt');
Names = string(num2cell(unique(M(1,:))));
NewOnes = [Names string(M(1,end)+1)];
G = digraph(M(1,:),M(2,:));
set(handles.popupmenu1,'string',Names);
set(handles.popupmenu2,'string',Names);
set(handles.popupmenu5,'string',NewOnes);
set(handles.popupmenu6,'string',NewOnes);
plot(G);

% --- Outputs from this function are returned to the command line.
function varargout = LastVersion_OutputFcn(~, ~, handles) 
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
global G;
d = dfsearch(G,get(handles.popupmenu1,'Value'));
f = msgbox(char(int2str(d)));

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(~, ~, handles)
global G;
b = bfsearch(G,get(handles.popupmenu1,'Value'));
f = msgbox(char(int2str(b)));

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(~, ~, ~)

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(~, ~, handles)
global M;
global Names;
w = M(3,:);
h = M(4,:);
[path,~,~,~] = greedybfs(M(1,:),M(2,:),w,h,Names,get(handles.popupmenu1,'Value'),get(handles.popupmenu2,'Value'));
f = msgbox(cellstr(path));

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(~, ~, handles)
global M;
global Names;
w = M(3,:);
h = M(4,:);
[path,~,~,~] = astar(M(1,:),M(2,:),w,h,Names,get(handles.popupmenu1,'Value'),get(handles.popupmenu2,'Value'));
f = msgbox(path);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(~, ~, handles)
global M;
global Names;
w = M(3,:);
[path,~,~] = ucs(M(1,:),M(2,:),w,Names,get(handles.popupmenu1,'Value'),get(handles.popupmenu2,'Value'));
f = msgbox(cellstr(path));

function edit3_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu5.
function popupmenu5_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu5_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu6.
function popupmenu6_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu6_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu7.
function popupmenu7_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu7_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(~, ~, ~)

% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, ~, ~)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(~, ~, handles)
global M;
global G;
global Names;
global NewOnes;
M(1,end+1) = get(handles.popupmenu5,'Value');
M(2,end) = get(handles.popupmenu6,'Value');
M(3,end) = get(handles.popupmenu7,'Value');
M(4,end) = get(handles.popupmenu8,'Value');
Names = string(num2cell(unique(M(1,:))));
NewOnes = [Names string(max(M(:))+1)];
G = digraph(M(1,:),M(2,:));
set(handles.popupmenu1,'string',NewOnes(1,(1:end-1)));
set(handles.popupmenu2,'string',NewOnes(1,(1:end-1)));
set(handles.popupmenu5,'string',NewOnes);
set(handles.popupmenu6,'string',NewOnes);
plot(G);
