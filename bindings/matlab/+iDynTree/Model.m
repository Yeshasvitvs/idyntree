classdef Model < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function self = Model(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(933, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(934, self);
        self.swigPtr=[];
      end
    end
    function varargout = getNrOfLinks(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(935, self, varargin{:});
    end
    function varargout = getLinkName(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(936, self, varargin{:});
    end
    function varargout = getLinkIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(937, self, varargin{:});
    end
    function varargout = isValidLinkIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(938, self, varargin{:});
    end
    function varargout = getLink(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(939, self, varargin{:});
    end
    function varargout = addLink(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(940, self, varargin{:});
    end
    function varargout = getNrOfJoints(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(941, self, varargin{:});
    end
    function varargout = getJointName(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(942, self, varargin{:});
    end
    function varargout = getJointIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(943, self, varargin{:});
    end
    function varargout = getJoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(944, self, varargin{:});
    end
    function varargout = isValidJointIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(945, self, varargin{:});
    end
    function varargout = isLinkNameUsed(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(946, self, varargin{:});
    end
    function varargout = isJointNameUsed(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(947, self, varargin{:});
    end
    function varargout = isFrameNameUsed(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(948, self, varargin{:});
    end
    function varargout = addJoint(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(949, self, varargin{:});
    end
    function varargout = getNrOfPosCoords(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(950, self, varargin{:});
    end
    function varargout = getNrOfDOFs(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(951, self, varargin{:});
    end
    function varargout = getNrOfFrames(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(952, self, varargin{:});
    end
    function varargout = addAdditionalFrameToLink(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(953, self, varargin{:});
    end
    function varargout = getFrameName(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(954, self, varargin{:});
    end
    function varargout = getFrameIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(955, self, varargin{:});
    end
    function varargout = isValidFrameIndex(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(956, self, varargin{:});
    end
    function varargout = getFrameTransform(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(957, self, varargin{:});
    end
    function varargout = getFrameLink(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(958, self, varargin{:});
    end
    function varargout = getNrOfNeighbors(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(959, self, varargin{:});
    end
    function varargout = getNeighbor(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(960, self, varargin{:});
    end
    function varargout = setDefaultBaseLink(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(961, self, varargin{:});
    end
    function varargout = getDefaultBaseLink(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(962, self, varargin{:});
    end
    function varargout = computeFullTreeTraversal(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(963, self, varargin{:});
    end
    function varargout = getInertialParameters(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(964, self, varargin{:});
    end
    function varargout = updateInertialParameters(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(965, self, varargin{:});
    end
    function varargout = visualSolidShapes(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(966, self, varargin{:});
    end
    function varargout = collisionSolidShapes(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(967, self, varargin{:});
    end
    function varargout = toString(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(968, self, varargin{:});
    end
  end
  methods(Static)
  end
end
