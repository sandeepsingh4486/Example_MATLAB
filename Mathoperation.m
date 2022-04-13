function varargout = Mathoperation(varargin)
% MATHOPERATION MATLAB code for Mathoperation.fig
%      MATHOPERATION, by itself, creates a new MATHOPERATION or raises the existing
%      singleton*.
%
%      H = MATHOPERATION returns the handle to a new MATHOPERATION or the handle to
%      the existing singleton*.
%
%      MATHOPERATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MATHOPERATION.M with the given input arguments.
%
%      MATHOPERATION('Property','Value',...) creates a new MATHOPERATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mathoperation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mathoperation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mathoperation

% Last Modified by GUIDE v2.5 29-Feb-2020 13:12:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mathoperation_OpeningFcn, ...
                   'gui_OutputFcn',  @Mathoperation_OutputFcn, ...
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


% --- Executes just before Mathoperation is made visible.
function Mathoperation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mathoperation (see VARARGIN)

% Choose default command line output for Mathoperation
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mathoperation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mathoperation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Entera_Callback(hObject, eventdata, handles)
% hObject    handle to Entera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Entera as text
%        str2double(get(hObject,'String')) returns contents of Entera as a double


% --- Executes during object creation, after setting all properties.
function Entera_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Entera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Enterb_Callback(hObject, eventdata, handles)
% hObject    handle to Enterb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Enterb as text
%        str2double(get(hObject,'String')) returns contents of Enterb as a double


% --- Executes during object creation, after setting all properties.
function Enterb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Enterb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in operation.
function operation_Callback(hObject, eventdata, handles)
% hObject    handle to operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns operation contents as cell array
%        contents{get(hObject,'Value')} returns selected item from operation


% --- Executes during object creation, after setting all properties.
function operation_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Action.
function Action_Callback(hObject, eventdata, handles)
% hObject    handle to Action (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global a b c total
axes(handles.resultplot)
a = get(handles.Entera,'String');
b = get(handles.Enterb,'String');
switch get(handles.operation,'Value')
 case 2
 total = str2num(a) + str2num(b);
c = num2str(total);
 plot(str2num(a),total,'.');
 xlabel('a');
ylabel('result');
set(handles.result,'String',c);
 case 3
  total = str2num(a) - str2num(b);
c = num2str(total);
plot(str2num(a),total,'.');
 xlabel('a');
ylabel('result');
set(handles.result,'String',c);
 case 4
  total = str2num(a) / str2num(b);
c = num2str(total);
plot(str2num(a),total,'.');
set(handles.result,'String',c);
 xlabel('a');
ylabel('result');
 case 5
  total = str2num(a) * str2num(b);
c = num2str(total);
set(handles.result,'String',c);
plot(str2num(a),total,'.');
 xlabel('a');
ylabel('result');
 otherwise
end
guidata(hObject, handles); 
