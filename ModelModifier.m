function varargout = ModelModifier(varargin)
% MODELMODIFIER MATLAB code for ModelModifier.fig
%      MODELMODIFIER, by itself, creates a new MODELMODIFIER or raises the existing
%      singleton*.
%
%      H = MODELMODIFIER returns the handle to a new MODELMODIFIER or the handle to
%      the existing singleton*.
%
%      MODELMODIFIER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODELMODIFIER.M with the given input arguments.
%
%      MODELMODIFIER('Property','Value',...) creates a new MODELMODIFIER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ModelModifier_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ModelModifier_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ModelModifier

% Last Modified by GUIDE v2.5 24-Apr-2018 16:29:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ModelModifier_OpeningFcn, ...
                   'gui_OutputFcn',  @ModelModifier_OutputFcn, ...
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


% --- Executes just before ModelModifier is made visible.
function ModelModifier_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ModelModifier (see VARARGIN)

% Choose default command line output for ModelModifier
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ModelModifier wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ModelModifier_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function editModelPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editModelPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumSearchType.
function pumSearchType_Callback(hObject, eventdata, handles)
% hObject    handle to pumSearchType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumSearchType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumSearchType
set(handles.textDisplay, 'String', 'Please Search Model First!');

% --- Executes during object creation, after setting all properties.
function pumSearchType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumSearchType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function editPName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editPName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumAdjustDepth.
function pumAdjustDepth_Callback(~, eventdata, handles)
% hObject    handle to pumAdjustDepth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumAdjustDepth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumAdjustDepth
set(handles.txtAdjustPort, 'String', ' ');

% --- Executes during object creation, after setting all properties.
function pumAdjustDepth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumAdjustDepth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumAdjustMode.
function pumAdjustMode_Callback(hObject, eventdata, handles)
% hObject    handle to pumAdjustMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumAdjustMode contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumAdjustMode
set(handles.txtAdjustPort, 'String', ' ');

% --- Executes during object creation, after setting all properties.
function pumAdjustMode_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumAdjustMode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumAdjustSystem.
function pumAdjustSystem_Callback(hObject, eventdata, handles)
% hObject    handle to pumAdjustSystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pumAdjustSystemValue = get(handles.pumAdjustSystem, 'Value');
if pumAdjustSystemValue == 2
    set(handles.editInputSystem, 'Visible', 'on');
else
    set(handles.editInputSystem, 'Visible', 'off');
end

% Hints: contents = cellstr(get(hObject,'String')) returns pumAdjustSystem contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumAdjustSystem


% --- Executes during object creation, after setting all properties.
function pumAdjustSystem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumAdjustSystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editAdjustLength_Callback(hObject, eventdata, handles)
% hObject    handle to editAdjustLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editAdjustLength as text
%        str2double(get(hObject,'String')) returns contents of editAdjustLength as a double
set(handles.txtAdjustPort, 'String', ' ');

% --- Executes during object creation, after setting all properties.
function editAdjustLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editAdjustLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editInputSystem_Callback(hObject, eventdata, handles)
% hObject    handle to editInputSystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editInputSystem as text
%        str2double(get(hObject,'String')) returns contents of editInputSystem as a double
set(handles.txtAdjustPort, 'String', ' ');

% --- Executes during object creation, after setting all properties.
function editInputSystem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editInputSystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbAdjustPort.
function pbAdjustPort_Callback(hObject, eventdata, handles)
% hObject    handle to pbAdjustPort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.txtAdjustPort, 'String', 'Working...');
% get adjust system
switch get(handles.pumAdjustSystem, 'Value')
    case 1
        TargetSystem.Path = gcs;
    case 2
        TargetSystem.Path = get(handles.editInputSystem, 'String');
    otherwise
        msgbox('Path Error!');
end

% get depth
switch get(handles.pumAdjustDepth, 'Value')
    case 1
        TargetSystem.Depth = 1;
    case 2
        TargetSystem.Depth = 2;
    case 3
        TargetSystem.Depth = 3;
	case 4
        TargetSystem.Depth = 4;
    otherwise
        msgbox('Depth Error!');
end

% get Mode
switch get(handles.pumAdjustMode, 'Value')
    case 1
        TargetSystem.Type = 'SubSystem';
    case 2
        TargetSystem.Type = 'ModelReference';
    otherwise
        msgbox('Mode Error!');
end

% get Length
AdjustSystem.Length = str2num(get(handles.editAdjustLength, 'String'));

% get search result
TargetSystem.Find = find_system(TargetSystem.Path, 'SearchDepth', TargetSystem.Depth, 'BlockType', TargetSystem.Type);
if length(TargetSystem.Find) == 1
    StartDepth = 1;
else
    StartDepth = 2;
end
for DepthCount = StartDepth:length(TargetSystem.Find)
    AdjustSystem.LineHandle = get_param(TargetSystem.Find{DepthCount}, 'LineHandles');
    AdjustSystem.PortHandle = get_param(TargetSystem.Find{DepthCount}, 'PortHandles');
    AdjustSystem.Name = get_param(TargetSystem.Find{DepthCount}, 'Name');
    %adjust inport
    for InportCount = 1:length(AdjustSystem.LineHandle.Inport())
        if AdjustSystem.LineHandle.Inport(InportCount) == -1
            continue;
        end
        AdjustSystem.BlockHandle = get_param(AdjustSystem.LineHandle.Inport(InportCount), 'SrcBlockHandle');
        if AdjustSystem.BlockHandle == -1
            continue;
        end
        if strcmp(get_param(AdjustSystem.BlockHandle, 'BlockType'), 'SubSystem')
            continue;
        end
        AdjustSystem.Port = get(AdjustSystem.LineHandle.Inport(InportCount), 'SourcePort');
        AdjustSystem.Port = strrep(AdjustSystem.Port, ':', '/');
        AdjustSystem.BlockPos = get_param(AdjustSystem.BlockHandle, 'Position');
        AdjustSystem.BlockCenterY = AdjustSystem.BlockPos(4) - AdjustSystem.BlockPos(2);
        AdjustSystem.BlockCenterX = AdjustSystem.BlockPos(3) - AdjustSystem.BlockPos(1);
        AdjustSystem.InportPos = get_param(AdjustSystem.PortHandle.Inport(InportCount), 'Position');
        set_param(AdjustSystem.BlockHandle, 'Position', [AdjustSystem.InportPos(1) - AdjustSystem.Length - AdjustSystem.BlockCenterX, AdjustSystem.InportPos(2) - AdjustSystem.BlockCenterY/2, AdjustSystem.InportPos(1) - AdjustSystem.Length, AdjustSystem.InportPos(2) + AdjustSystem.BlockCenterY / 2]);
        delete_line(TargetSystem.Path, AdjustSystem.Port, [AdjustSystem.Name, '/', num2str(InportCount)]);
        add_line(TargetSystem.Path, AdjustSystem.Port, [AdjustSystem.Name, '/', num2str(InportCount)], 'autorouting', 'on');
    end
	% adjust outport
	for OutportCount = 1:length(AdjustSystem.LineHandle.Outport)
		if AdjustSystem.LineHandle.Outport(OutportCount) == -1
			continue;
		end
		AdjustSystem.DstBlkH = get_param(AdjustSystem.LineHandle.Outport(OutportCount), 'DstBlockHandle');
		if AdjustSystem.DstBlkH == -1
			continue;
		end
		AdjustSystem.DstPortH = get_param(AdjustSystem.LineHandle.Outport(OutportCount), 'DstPortHandle');
		for DstBlkCount = 1:length(AdjustSystem.DstBlkH)
            if strcmp(get_param(AdjustSystem.DstBlkH(DstBlkCount), 'BlockType'), 'SubSystem')
                continue;
            end
            DstPortNum = get_param(AdjustSystem.DstPortH(DstBlkCount), 'PortNumber');
            DstPort = [get_param(AdjustSystem.DstBlkH(DstBlkCount), 'name'), '/', num2str(DstPortNum)];
            DstBlkPos = get_param(AdjustSystem.DstBlkH(DstBlkCount), 'Position');
            DstBlkLength = DstBlkPos(4) - DstBlkPos(2);
            DstBlkWidth = DstBlkPos(3) - DstBlkPos(1);
            PortPos = get_param(AdjustSystem.PortHandle.Outport(OutportCount), 'Position');
            if DstBlkCount == 1
                set_param(AdjustSystem.DstBlkH(DstBlkCount), 'Position', [PortPos(1) + AdjustSystem.Length, PortPos(2) - DstBlkLength / 2, PortPos(1) + AdjustSystem.Length + DstBlkWidth, PortPos(2) + DstBlkLength / 2]);
                OldFloorPosition = PortPos(2) + DstBlkLength / 2;
            else
                set_param(AdjustSystem.DstBlkH(DstBlkCount),'Position',[PortPos(1) + AdjustSystem.Length, OldFloorPosition + AdjustSystem.Length / 2 + DstBlkLength / 2,PortPos(1) + AdjustSystem.Length + DstBlkWidth, OldFloorPosition + AdjustSystem.Length / 2 + DstBlkLength + DstBlkLength/2]);
                OldFloorPosition = OldFloorPosition + AdjustSystem.Length / 2 + DstBlkLength + DstBlkLength / 2;
            end
            delete_line(TargetSystem.Path,[AdjustSystem.Name,'/',num2str(OutportCount)],DstPort);
            add_line(TargetSystem.Path,[AdjustSystem.Name,'/',num2str(OutportCount)],DstPort,'autorouting','on');
        end
		
	end
    
end
set(handles.txtAdjustPort, 'String', 'Adjust Successfully !');


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu10.
function popupmenu10_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu10 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu10


% --- Executes during object creation, after setting all properties.
function popupmenu10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu9.
function popupmenu9_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu9 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu9


% --- Executes during object creation, after setting all properties.
function popupmenu9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu8.
function popupmenu8_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu8 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu8


% --- Executes during object creation, after setting all properties.
function popupmenu8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumModelPath.
function pumModelPath_Callback(hObject, eventdata, handles)
% hObject    handle to pumModelPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumModelPath contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumModelPath
pumModelPathValue = get(handles.pumModelPath, 'Value');
if pumModelPathValue == 2
    set(handles.textDisplay, 'String', 'Please Paste Model Path First !');
    set(handles.editSetValue, 'String', 'Mdl Pth');
else
	set(handles.textDisplay, 'String', 'Please Search Model First!');
    set(handles.editSetValue, 'String', ' ');
end

% --- Executes during object creation, after setting all properties.
function pumModelPath_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumModelPath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumSearchValue.
function pumSearchValue_Callback(hObject, eventdata, handles)
% hObject    handle to pumSearchValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumSearchValue contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumSearchValue
set(handles.textDisplay, 'String', 'Please Search Model First!');

% --- Executes during object creation, after setting all properties.
function pumSearchValue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumSearchValue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumLogOption.
function pumLogOption_Callback(hObject, eventdata, handles)
% hObject    handle to pumLogOption (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumLogOption contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumLogOption
set(handles.textDisplay, 'String', 'Please Search Model First!');

% --- Executes during object creation, after setting all properties.
function pumLogOption_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumLogOption (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tbTerminator.
function tbTerminator_Callback(hObject, eventdata, handles)
% hObject    handle to tbTerminator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbTerminator
tbValue = get(handles.tbTerminator,'Value');
if tbValue
    set(handles.tbTerminator,'BackgroundColor', 'White');
    set(handles.tbTerminator,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbTerminator,'ForegroundColor', 'White');
    set(handles.tbTerminator,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbMerge.
function tbMerge_Callback(hObject, eventdata, handles)
% hObject    handle to tbMerge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbMerge
tbValue = get(handles.tbMerge,'Value');
if tbValue
    set(handles.tbMerge,'BackgroundColor', 'White');
    set(handles.tbMerge,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbMerge,'ForegroundColor', 'White');
    set(handles.tbMerge,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbDelay.
function tbDelay_Callback(hObject, eventdata, handles)
% hObject    handle to tbDelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbDelay
tbValue = get(handles.tbDelay,'Value');
if tbValue
    set(handles.tbDelay,'BackgroundColor', 'White');
    set(handles.tbDelay,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbDelay,'ForegroundColor', 'White');
    set(handles.tbDelay,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbGround.
function tbGround_Callback(hObject, eventdata, handles)
% hObject    handle to tbGround (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbGround
tbValue = get(handles.tbGround,'Value');
if tbValue
    set(handles.tbGround,'BackgroundColor', 'White');
    set(handles.tbGround,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbGround,'ForegroundColor', 'White');
    set(handles.tbGround,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbDataConvert.
function tbDataConvert_Callback(hObject, eventdata, handles)
% hObject    handle to tbDataConvert (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbDataConvert
tbValue = get(handles.tbDataConvert,'Value');
if tbValue
    set(handles.tbDataConvert,'BackgroundColor', 'White');
    set(handles.tbDataConvert,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbDataConvert,'ForegroundColor', 'White');
    set(handles.tbDataConvert,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbSaturation.
function tbSaturation_Callback(hObject, eventdata, handles)
% hObject    handle to tbSaturation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbSaturation
tbValue = get(handles.tbSaturation,'Value');
if tbValue
    set(handles.tbSaturation,'BackgroundColor', 'White');
    set(handles.tbSaturation,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbSaturation,'ForegroundColor', 'White');
    set(handles.tbSaturation,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbScope.
function tbScope_Callback(hObject, eventdata, handles)
% hObject    handle to tbScope (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbScope
tbValue = get(handles.tbScope,'Value');
if tbValue
    set(handles.tbScope,'BackgroundColor', 'White');
    set(handles.tbScope,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbScope,'ForegroundColor', 'White');
    set(handles.tbScope,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbIf.
function tbIf_Callback(hObject, eventdata, handles)
% hObject    handle to tbIf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbIf
tbValue = get(handles.tbIf,'Value');
if tbValue
    set(handles.tbIf,'BackgroundColor', 'White');
    set(handles.tbIf,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbIf,'ForegroundColor', 'White');
    set(handles.tbIf,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbLogicalOperator.
function tbLogicalOperator_Callback(hObject, eventdata, handles)
% hObject    handle to tbLogicalOperator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbLogicalOperator
tbValue = get(handles.tbLogicalOperator,'Value');
if tbValue
    set(handles.tbLogicalOperator,'BackgroundColor', 'White');
    set(handles.tbLogicalOperator,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbLogicalOperator,'ForegroundColor', 'White');
    set(handles.tbLogicalOperator,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbAdd.
function tbAdd_Callback(hObject, eventdata, handles)
% hObject    handle to tbAdd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbAdd
tbValue = get(handles.tbAdd,'Value');
if tbValue
    set(handles.tbAdd,'BackgroundColor', 'White');
    set(handles.tbAdd,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbAdd,'ForegroundColor', 'White');
    set(handles.tbAdd,'BackgroundColor', [0.424, 0.251, 0.382]);
end


% --- Executes on button press in tbActionPort.
function tbActionPort_Callback(hObject, eventdata, handles)
% hObject    handle to tbActionPort (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbActionPort
tbValue = get(handles.tbActionPort,'Value');
if tbValue
    set(handles.tbActionPort,'BackgroundColor', 'White');
    set(handles.tbActionPort,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbActionPort,'ForegroundColor', 'White');
    set(handles.tbActionPort,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbMinMax.
function tbMinMax_Callback(hObject, eventdata, handles)
% hObject    handle to tbMinMax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbMinMax
tbValue = get(handles.tbMinMax,'Value');
if tbValue
    set(handles.tbMinMax,'BackgroundColor', 'White');
    set(handles.tbMinMax,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbMinMax,'ForegroundColor', 'White');
    set(handles.tbMinMax,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbDivide.
function tbDivide_Callback(hObject, eventdata, handles)
% hObject    handle to tbDivide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbDivide
tbValue = get(handles.tbDivide,'Value');
if tbValue
    set(handles.tbDivide,'BackgroundColor', 'White');
    set(handles.tbDivide,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbDivide,'ForegroundColor', 'White');
    set(handles.tbDivide,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbSubsystem.
function tbSubsystem_Callback(hObject, eventdata, handles)
% hObject    handle to tbSubsystem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbSubsystem
tbValue = get(handles.tbSubsystem,'Value');
if tbValue
    set(handles.tbSubsystem,'BackgroundColor', 'White');
    set(handles.tbSubsystem,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbSubsystem,'ForegroundColor', 'White');
    set(handles.tbSubsystem,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in tbIn.
function tbIn_Callback(hObject, eventdata, handles)
% hObject    handle to tbIn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbIn
tbValue = get(handles.tbIn,'Value');
if tbValue
    set(handles.tbIn,'BackgroundColor', 'White');
    set(handles.tbIn,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbIn,'ForegroundColor', 'White');
    set(handles.tbIn,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in togglebutton30.
function togglebutton30_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton30


% --- Executes on button press in tbOut.
function tbOut_Callback(hObject, eventdata, handles)
% hObject    handle to tbOut (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbOut
tbValue = get(handles.tbOut,'Value');
if tbValue
    set(handles.tbOut,'BackgroundColor', 'White');
    set(handles.tbOut,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbOut,'ForegroundColor', 'White');
    set(handles.tbOut,'BackgroundColor', [0.424, 0.251, 0.382]);
end

% --- Executes on button press in togglebutton32.
function togglebutton32_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton32


% --- Executes on button press in togglebutton33.
function togglebutton33_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton33


% --- Executes on selection change in pumDepth.
function pumDepth_Callback(hObject, eventdata, handles)
% hObject    handle to pumDepth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumDepth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumDepth


% --- Executes during object creation, after setting all properties.
function pumDepth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumDepth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumColor.
function pumColor_Callback(hObject, eventdata, handles)
% hObject    handle to pumColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumColor contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumColor


% --- Executes during object creation, after setting all properties.
function pumColor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumColor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumName.
function pumName_Callback(hObject, eventdata, handles)
% hObject    handle to pumName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumName contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumName


% --- Executes during object creation, after setting all properties.
function pumName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumOption.
function pumOption_Callback(hObject, eventdata, handles)
% hObject    handle to pumOption (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumOption contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumOption
pumOptionValue = get(handles.pumOption, 'Value');
if pumOptionValue == 2
    set(handles.editL, 'Visible', 'on');
    set(handles.textL, 'Visible', 'on');
	set(handles.editW, 'Visible', 'on');
    set(handles.textW, 'Visible', 'on');
else
    set(handles.editL, 'Visible', 'off');
    set(handles.textL, 'Visible', 'off');
    set(handles.editW, 'Visible', 'off');
    set(handles.textW, 'Visible', 'off');
end

% --- Executes during object creation, after setting all properties.
function pumOption_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumOption (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editL_Callback(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editL as text
%        str2double(get(hObject,'String')) returns contents of editL as a double


% --- Executes during object creation, after setting all properties.
function editL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editW_Callback(hObject, eventdata, handles)
% hObject    handle to editW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editW as text
%        str2double(get(hObject,'String')) returns contents of editW as a double


% --- Executes during object creation, after setting all properties.
function editW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbModify.
function pbModify_Callback(hObject, eventdata, handles)
% hObject    handle to pbModify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% get color
switch get(handles.pumColor, 'Value')
    case 1
        Modify.Color = 'White';
    case 2
        Modify.Color = 'Black';
    case 3
        Modify.Color = 'Red';
    case 4
        Modify.Color = 'Blue';
    case 5
        Modify.Color = 'Green';
    otherwise
        msgbox('Someting Wrong!');
end
% get depth
switch get(handles.pumDepth, 'Value')
    case 1
        Modify.Depth = 1;
    case 2
        Modify.Depth = inf;
    otherwise
        msgbox('Somthing Wrong!');
end
% get name
switch get(handles.pumName, 'Value')
    case 1
        Modify.ShowName = 'off';
    case 2
        Modify.ShowName = 'on';
    otherwise
        msgbox('Something Wrong!');
end

% get modify block
CheckCount = 1;
if get(handles.tbConstant,'Value')
    Modify.Type{CheckCount, 1} = 'Constant';
    CheckCount = CheckCount + 1;
end
if get(handles.tbGain,'Value')
    Modify.Type{CheckCount, 1} = 'Gain';
    CheckCount = CheckCount + 1;
end
if get(handles.tbFrom,'Value')
    Modify.Type{CheckCount, 1} = 'From';
    CheckCount = CheckCount + 1;
end
if get(handles.tbGoto,'Value')
    Modify.Type{CheckCount, 1} = 'Goto';
    CheckCount = CheckCount + 1;
end
if get(handles.tbMerge,'Value')
    Modify.Type{CheckCount, 1} = 'Merge';
    CheckCount = CheckCount + 1;
end
if get(handles.tbTerminator,'Value')
    Modify.Type{CheckCount, 1} = 'Terminator';
    CheckCount = CheckCount + 1;
end
if get(handles.tbUnitDelay,'Value')
    Modify.Type{CheckCount, 1} = 'UnitDelay';
    CheckCount = CheckCount + 1;
end
if get(handles.tbDelay,'Value')
    Modify.Type{CheckCount, 1} = 'Delay';
    CheckCount = CheckCount + 1;
end
if get(handles.tbDataConvert,'Value')
    Modify.Type{CheckCount, 1} = 'DataTypeConversion';
    CheckCount = CheckCount + 1;
end
if get(handles.tbGround,'Value')
    Modify.Type{CheckCount, 1} = 'Ground';
    CheckCount = CheckCount + 1;
end
if get(handles.tbScope,'Value')
    Modify.Type{CheckCount, 1} = 'Scope';
    CheckCount = CheckCount + 1;
end
if get(handles.tbSaturation,'Value')
    Modify.Type{CheckCount, 1} = 'Saturation';
    CheckCount = CheckCount + 1;
end
if get(handles.tbIf,'Value')
    Modify.Type{CheckCount, 1} = 'If';
    CheckCount = CheckCount + 1;
end
if get(handles.tbLogicalOperator,'Value')
    Modify.Type{CheckCount, 1} = 'Logic';
    CheckCount = CheckCount + 1;
end
if get(handles.tbActionPort,'Value')
    Modify.Type{CheckCount, 1} = 'ActionPort';
    CheckCount = CheckCount + 1;
end
if get(handles.tbAdd,'Value')
    Modify.Type{CheckCount, 1} = 'Sum';
    CheckCount = CheckCount + 1;
end
if get(handles.tbDivide,'Value')
    Modify.Type{CheckCount, 1} = 'Product';
    CheckCount = CheckCount + 1;
end
if get(handles.tbSubsystem,'Value')
    Modify.Type{CheckCount, 1} = 'SubSystem';
    CheckCount = CheckCount + 1;
end
if get(handles.tbIn,'Value')
    Modify.Type{CheckCount, 1} = 'Inport';
    CheckCount = CheckCount + 1;
end
if get(handles.tbOut,'Value')
    Modify.Type{CheckCount, 1} = 'Outport';
    CheckCount = CheckCount + 1;
end
if get(handles.tbMinMax,'Value')
    Modify.Type{CheckCount, 1} = 'MinMax';
    CheckCount = CheckCount + 1;
end

Modify.Path = gcs;
% modify model
if CheckCount > 1
    for TypeCount = 1:(CheckCount - 1)
        Modify.Block = find_system(Modify.Path, 'SearchDepth', Modify.Depth, 'BlockType', Modify.Type{TypeCount, 1});
        for BlkCount = 1:length(Modify.Block)
            set_param(Modify.Block{BlkCount, 1}, 'ShowName', Modify.ShowName);
            set_param(Modify.Block{BlkCount, 1}, 'BackgroundColor', Modify.Color);
            set_param(Modify.Block{BlkCount, 1}, 'ForegroundColor', 'Black');
            switch get(handles.pumOption, 'Value')
                case 1
                    ;
                case 2
                    Modify.Length = str2num(get(handles.editL, 'String'));
                    Modify.Width = str2num(get(handles.editW, 'String'));
                    Modify.Position = get_param(Modify.Block{BlkCount, 1}, 'Position');
                    Modify.Position(1) = (Modify.Position(1) + Modify.Position(3) - Modify.Width) / 2;
                    Modify.Position(3) = (Modify.Position(1) + Modify.Position(3) + Modify.Width) / 2;
                    Modify.Position(2) = (Modify.Position(2) + Modify.Position(4) - Modify.Length) / 2;
                    Modify.Position(4) = (Modify.Position(2) + Modify.Position(4) + Modify.Length) / 2;
                    set_param(Modify.Block{BlkCount, 1}, 'Position', Modify.Position);
                case 3
                    delete_block(Modify.Block{BlkCount, 1});
                otherwise
                    msgbox('Something Wrong!');
            end
         end       
    end
end
% if get(handles.tbConstant,'Value')
%     Modify.Type = 'Constant';
%     Modify.Block = find_system(Modify.Path, 'SearchDepth', Modify.Depth, 'BlockType', Modify.Type);
%     for BlkCount = 1:length(Modify.Block)
%         set_param(Modify.Block{BlkCount, 1}, 'ShowName', Modify.ShowName);
%         set_param(Modify.Block{BlkCount, 1}, 'BackgroundColor', Modify.Color);
%         switch get(handles.pumOption, 'Value')
%             case 1
%                 ;
%             case 2
%                 Modify.Length = str2num(get(handles.editL, 'String'));
%                 Modify.Width = str2num(get(handles.editW, 'String'));
%                 Modify.Position = get_param(Modify.Block{BlkCount, 1}, 'Position');
%                 Modify.Position(1) = (Modify.Position(1) + Modify.Position(3) - Modify.Width) / 2;
%                 Modify.Position(3) = (Modify.Position(1) + Modify.Position(3) + Modify.Width) / 2;
%                 Modify.Position(2) = (Modify.Position(2) + Modify.Position(4) - Modify.Length) / 2;
%                 Modify.Position(4) = (Modify.Position(2) + Modify.Position(4) + Modify.Length) / 2;
%                 set_param(Modify.Block{BlkCount, 1}, 'Position', Modify.Position);
%             case 3
%                 delete_block(Modify.Block{BlkCount, 1});
%             otherwise
%                 msgbox('Something Wrong!');
%         end
%     end
% end
            

% --- Executes on button press in tbConstant.
function tbConstant_Callback(hObject, eventdata, handles)
% hObject    handle to tbConstant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbConstant
tbConstantValue = get(handles.tbConstant,'Value');
if tbConstantValue
    set(handles.tbConstant,'BackgroundColor', 'White');
    set(handles.tbConstant,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbConstant,'ForegroundColor', 'White');
    set(handles.tbConstant,'BackgroundColor', [0.424, 0.251, 0.382]);
end


% --- Executes on button press in tbGain.
function tbGain_Callback(hObject, eventdata, handles)
% hObject    handle to tbGain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbGain
tbValue = get(handles.tbGain,'Value');
if tbValue
    set(handles.tbGain,'BackgroundColor', 'White');
    set(handles.tbGain,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbGain,'ForegroundColor', 'White');
    set(handles.tbGain,'BackgroundColor', [0.424, 0.251, 0.382]);
end


% --- Executes on button press in tbFrom.
function tbFrom_Callback(hObject, eventdata, handles)
% hObject    handle to tbFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbFrom
tbValue = get(handles.tbFrom,'Value');
if tbValue
    set(handles.tbFrom,'BackgroundColor', 'White');
    set(handles.tbFrom,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbFrom,'ForegroundColor', 'White');
    set(handles.tbFrom,'BackgroundColor', [0.424, 0.251, 0.382]);
end


% --- Executes on button press in tbGoto.
function tbGoto_Callback(hObject, eventdata, handles)
% hObject    handle to tbGoto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbGoto
tbValue = get(handles.tbGoto,'Value');
if tbValue
    set(handles.tbGoto,'BackgroundColor', 'White');
    set(handles.tbGoto,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbGoto,'ForegroundColor', 'White');
    set(handles.tbGoto,'BackgroundColor', [0.424, 0.251, 0.382]);
end


% --- Executes on button press in tbUnitDelay.
function tbUnitDelay_Callback(hObject, eventdata, handles)
% hObject    handle to tbUnitDelay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tbUnitDelay
tbValue = get(handles.tbUnitDelay,'Value');
if tbValue
    set(handles.tbUnitDelay,'BackgroundColor', 'White');
    set(handles.tbUnitDelay,'ForegroundColor', [0.424, 0.251, 0.382]);
else
    set(handles.tbUnitDelay,'ForegroundColor', 'White');
    set(handles.tbUnitDelay,'BackgroundColor', [0.424, 0.251, 0.382]);
end



function editCName_Callback(hObject, eventdata, handles)
% hObject    handle to editCName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editCName as text
%        str2double(get(hObject,'String')) returns contents of editCName as a double


% --- Executes during object creation, after setting all properties.
function editCName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editCName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editTName_Callback(hObject, eventdata, handles)
% hObject    handle to editTName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editTName as text
%        str2double(get(hObject,'String')) returns contents of editTName as a double


% --- Executes during object creation, after setting all properties.
function editTName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editTName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumFitDepth.
function pumFitDepth_Callback(hObject, eventdata, handles)
% hObject    handle to pumFitDepth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumFitDepth contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumFitDepth


% --- Executes during object creation, after setting all properties.
function pumFitDepth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumFitDepth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbGenXls.
function pbGenXls_Callback(hObject, eventdata, handles)
% hObject    handle to pbGenXls (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
switch get(handles.pumFitDepth, 'Value')
    case 1
        set_param(gcs, 'ZoomFactor', 'fit to view');
    case 2
        TargetSystem = find_system(gcs, 'SearchDepth', inf, 'BlockType', 'SubSystem');
        for i = 1:length(TargetSystem)
            open_system(TargetSystem{i});
            set_param(TargetSystem{i}, 'ZoomFactor', 'FitSystem');
        end
        open_system(TargetSystem{1});
    otherwise
        msgbox('Depth Error!');
end
