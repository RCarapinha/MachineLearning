function varargout = tictactoe(varargin)
% TICTACTOE MATLAB code for tictactoe.fig
%      TICTACTOE, by itself, creates a new TICTACTOE or raises the existing
%      singleton*.
%
%      H = TICTACTOE returns the handle to a new TICTACTOE or the handle to
%      the existing singleton*.
%
%      TICTACTOE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TICTACTOE.M with the given input arguments.
%
%      TICTACTOE('Property','Value',...) creates a new TICTACTOE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tictactoe_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tictactoe_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tictactoe

% Last Modified by GUIDE v2.5 24-Nov-2018 23:26:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @tictactoe_OpeningFcn, ...
    'gui_OutputFcn',  @tictactoe_OutputFcn, ...
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
% End initialization code - DO NOT EDIT

% --- Executes just before tictactoe is made visible.
function tictactoe_OpeningFcn(hObject, ~, handles, varargin)
global x;
global y;
global M;
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tictactoe (see VARARGIN)

% Choose default command line output for tictactoe
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tictactoe wait for user response (see UIRESUME)
% uiwait(handles.figure1);
t = (1/16:1/8:1)'*2*pi;
x = cos(t);
y = sin(t);
M=zeros(4,4,4);
set(handles.axes1,'visible', 'off');
set(handles.axes2,'visible', 'off');
set(handles.axes3,'visible', 'off');
set(handles.axes4,'visible', 'off');
set(handles.axes5,'visible', 'off');
set(handles.axes6,'visible', 'off');
set(handles.axes7,'visible', 'off');
set(handles.axes8,'visible', 'off');
set(handles.axes9,'visible', 'off');
set(handles.axes10,'visible', 'off');
set(handles.axes11,'visible', 'off');
set(handles.axes12,'visible', 'off');
set(handles.axes13,'visible', 'off');
set(handles.axes14,'visible', 'off');
set(handles.axes15,'visible', 'off');
set(handles.axes16,'visible', 'off');
set(handles.axes17,'visible', 'off');
set(handles.axes18,'visible', 'off');
set(handles.axes19,'visible', 'off');
set(handles.axes20,'visible', 'off');
set(handles.axes21,'visible', 'off');
set(handles.axes22,'visible', 'off');
set(handles.axes23,'visible', 'off');
set(handles.axes24,'visible', 'off');
set(handles.axes25,'visible', 'off');
set(handles.axes26,'visible', 'off');
set(handles.axes27,'visible', 'off');
set(handles.axes28,'visible', 'off');
set(handles.axes29,'visible', 'off');
set(handles.axes30,'visible', 'off');
set(handles.axes31,'visible', 'off');
set(handles.axes32,'visible', 'off');
set(handles.axes33,'visible', 'off');
set(handles.axes34,'visible', 'off');
set(handles.axes35,'visible', 'off');
set(handles.axes36,'visible', 'off');
set(handles.axes37,'visible', 'off');
set(handles.axes38,'visible', 'off');
set(handles.axes39,'visible', 'off');
set(handles.axes40,'visible', 'off');
set(handles.axes41,'visible', 'off');
set(handles.axes42,'visible', 'off');
set(handles.axes43,'visible', 'off');
set(handles.axes44,'visible', 'off');
set(handles.axes45,'visible', 'off');
set(handles.axes46,'visible', 'off');
set(handles.axes47,'visible', 'off');
set(handles.axes48,'visible', 'off');
set(handles.axes49,'visible', 'off');
set(handles.axes50,'visible', 'off');
set(handles.axes51,'visible', 'off');
set(handles.axes52,'visible', 'off');
set(handles.axes53,'visible', 'off');
set(handles.axes54,'visible', 'off');
set(handles.axes55,'visible', 'off');
set(handles.axes56,'visible', 'off');
set(handles.axes57,'visible', 'off');
set(handles.axes58,'visible', 'off');
set(handles.axes59,'visible', 'off');
set(handles.axes60,'visible', 'off');
set(handles.axes61,'visible', 'off');
set(handles.axes62,'visible', 'off');
set(handles.axes63,'visible', 'off');
set(handles.axes64,'visible', 'off');

% --- Outputs from this function are returned to the command line.
function varargout = tictactoe_OutputFcn(~, ~, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(~, ~, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x;
global M;
global y;
L = 0;
P = 0;
RowP = get(handles.popupmenu1,'Value');
ColumnP = get(handles.popupmenu2,'Value');
LayerP = get(handles.popupmenu3,'Value');

if(M(RowP, ColumnP, LayerP) == 0)
    P = 1;
    M(RowP,ColumnP,LayerP) = 1;
else
    P = 0;
    msgbox("Is Occupied");
end

if P == 1
    switch LayerP
        case 1
            switch RowP
                case 1
                    switch ColumnP
                        case 1
                            axes(handles.axes1);
                        case 2
                            axes(handles.axes2)
                        case 3
                            axes(handles.axes3)
                        case 4
                            axes(handles.axes4)
                    end
                case 2
                    switch ColumnP
                        case 1
                            axes(handles.axes5)
                        case 2
                            axes(handles.axes6)
                        case 3
                            axes(handles.axes7)
                        case 4
                            axes(handles.axes8)
                    end
                case 3
                    switch ColumnP
                        case 1
                            axes(handles.axes9)
                        case 2
                            axes(handles.axes10)
                        case 3
                            axes(handles.axes11)
                        case 4
                            axes(handles.axes12)
                    end
                case 4
                    switch ColumnP
                        case 1
                            axes(handles.axes13)
                        case 2
                            axes(handles.axes14)
                        case 3
                            axes(handles.axes15)
                        case 4
                            axes(handles.axes16)
                    end
            end
        case 2
            switch RowP
                case 1
                    switch ColumnP
                        case 1
                            axes(handles.axes17)
                        case 2
                            axes(handles.axes18)
                        case 3
                            axes(handles.axes19)
                        case 4
                            axes(handles.axes20)
                    end
                case 2
                    switch ColumnP
                        case 1
                            axes(handles.axes21)
                        case 2
                            axes(handles.axes22)
                        case 3
                            axes(handles.axes23)
                        case 4
                            axes(handles.axes24)
                    end
                case 3
                    switch ColumnP
                        case 1
                            axes(handles.axes25)
                        case 2
                            axes(handles.axes26)
                        case 3
                            axes(handles.axes27)
                        case 4
                            axes(handles.axes28)
                    end
                case 4
                    switch ColumnP
                        case 1
                            axes(handles.axes29)
                        case 2
                            axes(handles.axes30)
                        case 3
                            axes(handles.axes31)
                        case 4
                            axes(handles.axes32)
                    end
            end
        case 3
            switch RowP
                case 1
                    switch ColumnP
                        case 1
                            axes(handles.axes33)
                        case 2
                            axes(handles.axes34)
                        case 3
                            axes(handles.axes35)
                        case 4
                            axes(handles.axes36)
                    end
                case 2
                    switch ColumnP
                        case 1
                            axes(handles.axes37)
                        case 2
                            axes(handles.axes38)
                        case 3
                            axes(handles.axes39)
                        case 4
                            axes(handles.axes40)
                    end
                case 3
                    switch ColumnP
                        case 1
                            axes(handles.axes41)
                        case 2
                            axes(handles.axes42)
                        case 3
                            axes(handles.axes43)
                        case 4
                            axes(handles.axes44)
                    end
                case 4
                    switch ColumnP
                        case 1
                            axes(handles.axes45)
                        case 2
                            axes(handles.axes46)
                        case 3
                            axes(handles.axes47)
                        case 4
                            axes(handles.axes48)
                    end
            end
        case 4
            switch RowP
                case 1
                    switch ColumnP
                        case 1
                            axes(handles.axes49)
                        case 2
                            axes(handles.axes50)
                        case 3
                            axes(handles.axes51)
                        case 4
                            axes(handles.axes52)
                    end
                case 2
                    switch ColumnP
                        case 1
                            axes(handles.axes53)
                        case 2
                            axes(handles.axes54)
                        case 3
                            axes(handles.axes55)
                        case 4
                            axes(handles.axes56)
                    end
                case 3
                    switch ColumnP
                        case 1
                            axes(handles.axes57)
                        case 2
                            axes(handles.axes58)
                        case 3
                            axes(handles.axes59)
                        case 4
                            axes(handles.axes60)
                    end
                case 4
                    switch ColumnP
                        case 1
                            axes(handles.axes61)
                        case 2
                            axes(handles.axes62)
                        case 3
                            axes(handles.axes63)
                        case 4
                            axes(handles.axes64)
                    end
            end
    end
    fill(x,y,'g')
    
    while L == 0
        [RowAI, ColumnAI, LayerAI] = ai(M);
        
        if M(RowAI,ColumnAI,LayerAI) == 0
            L = 1;
            M(RowAI,ColumnAI,LayerAI) = -1;
            switch LayerAI
                case 1
                    switch RowAI
                        case 1
                            switch ColumnAI
                                case 1
                                    axes(handles.axes1)
                                case 2
                                    axes(handles.axes2)
                                case 3
                                    axes(handles.axes3)
                                case 4
                                    axes(handles.axes4)
                            end
                        case 2
                            switch ColumnAI
                                case 1
                                    axes(handles.axes5)
                                case 2
                                    axes(handles.axes6)
                                case 3
                                    axes(handles.axes7)
                                case 4
                                    axes(handles.axes8)
                            end
                        case 3
                            switch ColumnAI
                                case 1
                                    axes(handles.axes9)
                                case 2
                                    axes(handles.axes10)
                                case 3
                                    axes(handles.axes11)
                                case 4
                                    axes(handles.axes12)
                            end
                        case 4
                            switch ColumnAI
                                case 1
                                    axes(handles.axes13)
                                case 2
                                    axes(handles.axes14)
                                case 3
                                    axes(handles.axes15)
                                case 4
                                    axes(handles.axes16)
                            end
                    end
                case 2
                    switch RowAI
                        case 1
                            switch ColumnAI
                                case 1
                                    axes(handles.axes17)
                                case 2
                                    axes(handles.axes18)
                                case 3
                                    axes(handles.axes19)
                                case 4
                                    axes(handles.axes20)
                            end
                        case 2
                            switch ColumnAI
                                case 1
                                    axes(handles.axes21)
                                case 2
                                    axes(handles.axes22)
                                case 3
                                    axes(handles.axes23)
                                case 4
                                    axes(handles.axes24)
                            end
                        case 3
                            switch ColumnAI
                                case 1
                                    axes(handles.axes25)
                                case 2
                                    axes(handles.axes26)
                                case 3
                                    axes(handles.axes27)
                                case 4
                                    axes(handles.axes28)
                            end
                        case 4
                            switch ColumnAI
                                case 1
                                    axes(handles.axes29)
                                case 2
                                    axes(handles.axes30)
                                case 3
                                    axes(handles.axes31)
                                case 4
                                    axes(handles.axes32)
                            end
                    end
                case 3
                    switch RowAI
                        case 1
                            switch ColumnAI
                                case 1
                                    axes(handles.axes33)
                                case 2
                                    axes(handles.axes34)
                                case 3
                                    axes(handles.axes35)
                                case 4
                                    axes(handles.axes36)
                            end
                        case 2
                            switch ColumnAI
                                case 1
                                    axes(handles.axes37)
                                case 2
                                    axes(handles.axes38)
                                case 3
                                    axes(handles.axes39)
                                case 4
                                    axes(handles.axes40)
                            end
                        case 3
                            switch ColumnAI
                                case 1
                                    axes(handles.axes41)
                                case 2
                                    axes(handles.axes42)
                                case 3
                                    axes(handles.axes43)
                                case 4
                                    axes(handles.axes44)
                            end
                        case 4
                            switch ColumnAI
                                case 1
                                    axes(handles.axes45)
                                case 2
                                    axes(handles.axes46)
                                case 3
                                    axes(handles.axes47)
                                case 4
                                    axes(handles.axes48)
                            end
                    end
                case 4
                    switch RowAI
                        case 1
                            switch ColumnAI
                                case 1
                                    axes(handles.axes49)
                                case 2
                                    axes(handles.axes50)
                                case 3
                                    axes(handles.axes51)
                                case 4
                                    axes(handles.axes52)
                            end
                        case 2
                            switch ColumnAI
                                case 1
                                    axes(handles.axes53)
                                case 2
                                    axes(handles.axes54)
                                case 3
                                    axes(handles.axes55)
                                case 4
                                    axes(handles.axes56)
                            end
                        case 3
                            switch ColumnAI
                                case 1
                                    axes(handles.axes57)
                                case 2
                                    axes(handles.axes58)
                                case 3
                                    axes(handles.axes59)
                                case 4
                                    axes(handles.axes60)
                            end
                        case 4
                            switch ColumnAI
                                case 1
                                    axes(handles.axes61)
                                case 2
                                    axes(handles.axes62)
                                case 3
                                    axes(handles.axes63)
                                case 4
                                    axes(handles.axes64)
                            end
                    end
            end
        else
            L = 0;
        end
    end
    fill(x,y,'r')
    
    Winner = win(M);
    
    if Winner == 1
        cla(handles.axes1,'reset')
        cla(handles.axes2,'reset')
        cla(handles.axes3,'reset')
        cla(handles.axes4,'reset')
        cla(handles.axes5,'reset')
        cla(handles.axes6,'reset')
        cla(handles.axes7,'reset')
        cla(handles.axes8,'reset')
        cla(handles.axes9,'reset')
        cla(handles.axes10,'reset')
        cla(handles.axes11,'reset')
        cla(handles.axes12,'reset')
        cla(handles.axes13,'reset')
        cla(handles.axes14,'reset')
        cla(handles.axes15,'reset')
        cla(handles.axes16,'reset')
        cla(handles.axes17,'reset')
        cla(handles.axes18,'reset')
        cla(handles.axes19,'reset')
        cla(handles.axes20,'reset')
        cla(handles.axes21,'reset')
        cla(handles.axes22,'reset')
        cla(handles.axes23,'reset')
        cla(handles.axes24,'reset')
        cla(handles.axes25,'reset')
        cla(handles.axes26,'reset')
        cla(handles.axes27,'reset')
        cla(handles.axes28,'reset')
        cla(handles.axes29,'reset')
        cla(handles.axes30,'reset')
        cla(handles.axes31,'reset')
        cla(handles.axes32,'reset')
        cla(handles.axes33,'reset')
        cla(handles.axes34,'reset')
        cla(handles.axes35,'reset')
        cla(handles.axes36,'reset')
        cla(handles.axes37,'reset')
        cla(handles.axes38,'reset')
        cla(handles.axes39,'reset')
        cla(handles.axes40,'reset')
        cla(handles.axes41,'reset')
        cla(handles.axes42,'reset')
        cla(handles.axes43,'reset')
        cla(handles.axes44,'reset')
        cla(handles.axes45,'reset')
        cla(handles.axes46,'reset')
        cla(handles.axes47,'reset')
        cla(handles.axes48,'reset')
        cla(handles.axes49,'reset')
        cla(handles.axes50,'reset')
        cla(handles.axes51,'reset')
        cla(handles.axes52,'reset')
        cla(handles.axes53,'reset')
        cla(handles.axes54,'reset')
        cla(handles.axes55,'reset')
        cla(handles.axes56,'reset')
        cla(handles.axes57,'reset')
        cla(handles.axes58,'reset')
        cla(handles.axes59,'reset')
        cla(handles.axes60,'reset')
        cla(handles.axes61,'reset')
        cla(handles.axes62,'reset')
        cla(handles.axes63,'reset')
        cla(handles.axes64,'reset')
        msgbox("Player Wins");
        M=zeros(4,4,4);
    elseif Winner == -1
        cla(handles.axes1,'reset')
        cla(handles.axes2,'reset')
        cla(handles.axes3,'reset')
        cla(handles.axes4,'reset')
        cla(handles.axes5,'reset')
        cla(handles.axes6,'reset')
        cla(handles.axes7,'reset')
        cla(handles.axes8,'reset')
        cla(handles.axes9,'reset')
        cla(handles.axes10,'reset')
        cla(handles.axes11,'reset')
        cla(handles.axes12,'reset')
        cla(handles.axes13,'reset')
        cla(handles.axes14,'reset')
        cla(handles.axes15,'reset')
        cla(handles.axes16,'reset')
        cla(handles.axes17,'reset')
        cla(handles.axes18,'reset')
        cla(handles.axes19,'reset')
        cla(handles.axes20,'reset')
        cla(handles.axes21,'reset')
        cla(handles.axes22,'reset')
        cla(handles.axes23,'reset')
        cla(handles.axes24,'reset')
        cla(handles.axes25,'reset')
        cla(handles.axes26,'reset')
        cla(handles.axes27,'reset')
        cla(handles.axes28,'reset')
        cla(handles.axes29,'reset')
        cla(handles.axes30,'reset')
        cla(handles.axes31,'reset')
        cla(handles.axes32,'reset')
        cla(handles.axes33,'reset')
        cla(handles.axes34,'reset')
        cla(handles.axes35,'reset')
        cla(handles.axes36,'reset')
        cla(handles.axes37,'reset')
        cla(handles.axes38,'reset')
        cla(handles.axes39,'reset')
        cla(handles.axes40,'reset')
        cla(handles.axes41,'reset')
        cla(handles.axes42,'reset')
        cla(handles.axes43,'reset')
        cla(handles.axes44,'reset')
        cla(handles.axes45,'reset')
        cla(handles.axes46,'reset')
        cla(handles.axes47,'reset')
        cla(handles.axes48,'reset')
        cla(handles.axes49,'reset')
        cla(handles.axes50,'reset')
        cla(handles.axes51,'reset')
        cla(handles.axes52,'reset')
        cla(handles.axes53,'reset')
        cla(handles.axes54,'reset')
        cla(handles.axes55,'reset')
        cla(handles.axes56,'reset')
        cla(handles.axes57,'reset')
        cla(handles.axes58,'reset')
        cla(handles.axes59,'reset')
        cla(handles.axes60,'reset')
        cla(handles.axes61,'reset')
        cla(handles.axes62,'reset')
        cla(handles.axes63,'reset')
        cla(handles.axes64,'reset')
        msgbox("AI Wins");
        M=zeros(4,4,4);
    end
    
    set(handles.axes1,'visible', 'off');
    set(handles.axes2,'visible', 'off');
    set(handles.axes3,'visible', 'off');
    set(handles.axes4,'visible', 'off');
    set(handles.axes5,'visible', 'off');
    set(handles.axes6,'visible', 'off');
    set(handles.axes7,'visible', 'off');
    set(handles.axes8,'visible', 'off');
    set(handles.axes9,'visible', 'off');
    set(handles.axes10,'visible', 'off');
    set(handles.axes11,'visible', 'off');
    set(handles.axes12,'visible', 'off');
    set(handles.axes13,'visible', 'off');
    set(handles.axes14,'visible', 'off');
    set(handles.axes15,'visible', 'off');
    set(handles.axes16,'visible', 'off');
    set(handles.axes17,'visible', 'off');
    set(handles.axes18,'visible', 'off');
    set(handles.axes19,'visible', 'off');
    set(handles.axes20,'visible', 'off');
    set(handles.axes21,'visible', 'off');
    set(handles.axes22,'visible', 'off');
    set(handles.axes23,'visible', 'off');
    set(handles.axes24,'visible', 'off');
    set(handles.axes25,'visible', 'off');
    set(handles.axes26,'visible', 'off');
    set(handles.axes27,'visible', 'off');
    set(handles.axes28,'visible', 'off');
    set(handles.axes29,'visible', 'off');
    set(handles.axes30,'visible', 'off');
    set(handles.axes31,'visible', 'off');
    set(handles.axes32,'visible', 'off');
    set(handles.axes33,'visible', 'off');
    set(handles.axes34,'visible', 'off');
    set(handles.axes35,'visible', 'off');
    set(handles.axes36,'visible', 'off');
    set(handles.axes37,'visible', 'off');
    set(handles.axes38,'visible', 'off');
    set(handles.axes39,'visible', 'off');
    set(handles.axes40,'visible', 'off');
    set(handles.axes41,'visible', 'off');
    set(handles.axes42,'visible', 'off');
    set(handles.axes43,'visible', 'off');
    set(handles.axes44,'visible', 'off');
    set(handles.axes45,'visible', 'off');
    set(handles.axes46,'visible', 'off');
    set(handles.axes47,'visible', 'off');
    set(handles.axes48,'visible', 'off');
    set(handles.axes49,'visible', 'off');
    set(handles.axes50,'visible', 'off');
    set(handles.axes51,'visible', 'off');
    set(handles.axes52,'visible', 'off');
    set(handles.axes53,'visible', 'off');
    set(handles.axes54,'visible', 'off');
    set(handles.axes55,'visible', 'off');
    set(handles.axes56,'visible', 'off');
    set(handles.axes57,'visible', 'off');
    set(handles.axes58,'visible', 'off');
    set(handles.axes59,'visible', 'off');
    set(handles.axes60,'visible', 'off');
    set(handles.axes61,'visible', 'off');
    set(handles.axes62,'visible', 'off');
    set(handles.axes63,'visible', 'off');
    set(handles.axes64,'visible', 'off');
end

% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(~, ~, ~)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, ~, ~)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(~, ~, ~)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, ~, ~)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(~, ~, ~)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3

% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, ~, ~)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end