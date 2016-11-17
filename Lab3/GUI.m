function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to th e GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
%		Main class. The GUI
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 16-Nov-2016 22:55:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function vBalleX_Callback(hObject, eventdata, handles)
% hObject    handle to vBalleX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vBalleX as text
%        str2double(get(hObject,'String')) returns contents of vBalleX as a double


% --- Executes during object creation, after setting all properties.
function vBalleX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vBalleX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vBalleY_Callback(hObject, eventdata, handles)
% hObject    handle to vBalleY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vBalleY as text
%        str2double(get(hObject,'String')) returns contents of vBalleY as a double


% --- Executes during object creation, after setting all properties.
function vBalleY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vBalleY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vBlocX_Callback(hObject, eventdata, handles)
% hObject    handle to vBlocX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vBlocX as text
%        str2double(get(hObject,'String')) returns contents of vBlocX as a double


% --- Executes during object creation, after setting all properties.
function vBlocX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vBlocX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vBlocY_Callback(hObject, eventdata, handles)
% hObject    handle to vBlocY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vBlocY as text
%        str2double(get(hObject,'String')) returns contents of vBlocY as a double


% --- Executes during object creation, after setting all properties.
function vBlocY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vBlocY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function vBlocZ_Callback(hObject, eventdata, handles)
% hObject    handle to vBlocZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vBlocZ as text
%        str2double(get(hObject,'String')) returns contents of vBlocZ as a double


% --- Executes during object creation, after setting all properties.
function vBlocZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vBlocZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wBlocX_Callback(hObject, eventdata, handles)
% hObject    handle to wBlocX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wBlocX as text
%        str2double(get(hObject,'String')) returns contents of wBlocX as a double


% --- Executes during object creation, after setting all properties.
function wBlocX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wBlocX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wBlocY_Callback(hObject, eventdata, handles)
% hObject    handle to wBlocY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wBlocY as text
%        str2double(get(hObject,'String')) returns contents of wBlocY as a double


% --- Executes during object creation, after setting all properties.
function wBlocY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wBlocY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wBlocZ_Callback(hObject, eventdata, handles)
% hObject    handle to wBlocZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wBlocZ as text
%        str2double(get(hObject,'String')) returns contents of wBlocZ as a double


% --- Executes during object creation, after setting all properties.
function wBlocZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wBlocZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in op2.
function op2_Callback(hObject, eventdata, handles)
% hObject    handle to op2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of op2


% --- Executes on button press in op1.
function op1_Callback(hObject, eventdata, handles)
% hObject    handle to op1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of op1


% --- Executes on button press in op3.
function op3_Callback(hObject, eventdata, handles)
% hObject    handle to op3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of op3


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

vBax=get(handles.vBalleX, 'string');
vBay=get(handles.vBalleY, 'string');
vBaz=get(handles.vBalleZ, 'string');
vBlx=get(handles.vBlocX, 'string');
vBly=get(handles.vBlocY, 'string');
vBlz=get(handles.vBlocZ, 'string');
wBlx=get(handles.wBlocX, 'string');
wBly=get(handles.wBlocY, 'string');
wBlz=get(handles.wBlocZ, 'string');
tl=get(handles.tl, 'string');

vBax = str2double(vBax);
vBay = str2double(vBay);
vBaz = str2double(vBaz);
vBlx = str2double(vBlx);
vBly = str2double(vBly);
vBlz = str2double(vBlz);
wBlx = str2double(wBlx);
wBly = str2double(wBly);
wBlz = str2double(wBlz);
tl = str2double(tl);

vBa = [vBax vBay vBaz]';
vBl = [vBlx vBly vBlz]';
wBl = [wBlx wBly wBlz]';

[Resultat blocf ballef Post]= Devoir3( vBl,wBl,tl,vBa );

if Resultat==0
    set(handles.ret, 'String', 'Tir réussi!');
elseif Resultat==1
    set(handles.ret, 'String', 'Bloc a touché le sol!');
else 
    set(handles.ret, 'String', 'Balle a touché le sol!');
end

Tf1 = Post(end, 1);
posBlocf = Post(end, 2:4);
posBallef = Post(end, 5:7);

set(handles.ballef, 'Data', ballef);
set(handles.blocf, 'Data', blocf);




set(handles.t, 'String', Tf1);   
set(handles.xf, 'String', posBlocf(1));   
set(handles.yf, 'String', posBlocf(2));   
set(handles.zf, 'String', posBlocf(3));   
set(handles.vxf, 'String', posBallef(1));   
set(handles.vyf, 'String', posBallef(2));   
set(handles.vzf, 'String', posBallef(3));   

PlotFigure(Post(:,2), Post(:,3), Post(:,4), Post(:,5), Post(:,6), Post(:,7), 'Tir', Resultat);

%{
fh = figure( )
    scatter3(x,y,z, 0.5, 'r')
    xlim([0 150]);
    ylim([0 150]);
    xlabel('X');
    ylabel('Y')
    zlabel('Z')
    
fh2 = figure( )
    scatter(x,y, 0.5, 'r')
    xlim([0 150]);
    ylim([0 150]);
    xlabel('X');
    ylabel('Y')
%}


function vBalleZ_Callback(hObject, eventdata, handles)
% hObject    handle to vBalleZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of vBalleZ as text
%        str2double(get(hObject,'String')) returns contents of vBalleZ as a double


% --- Executes during object creation, after setting all properties.
function vBalleZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vBalleZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tl_Callback(hObject, eventdata, handles)
% hObject    handle to tl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tl as text
%        str2double(get(hObject,'String')) returns contents of tl as a double


% --- Executes during object creation, after setting all properties.
function tl_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
