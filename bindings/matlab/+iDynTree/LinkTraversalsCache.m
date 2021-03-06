classdef LinkTraversalsCache < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function self = LinkTraversalsCache(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(1203, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.swigPtr = [];
      end
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1204, self);
        self.swigPtr=[];
      end
    end
    function varargout = resize(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1205, self, varargin{:});
    end
    function varargout = getTraversalWithLinkAsBase(self,varargin)
      [varargout{1:nargout}] = iDynTreeMEX(1206, self, varargin{:});
    end
  end
  methods(Static)
  end
end
