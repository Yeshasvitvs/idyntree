classdef AttitudeQuaternionEKFParameters < SwigRef
  methods
    function this = swig_this(self)
      this = iDynTreeMEX(3, self);
    end
    function varargout = time_step_in_seconds(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1737, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1738, self, varargin{1});
      end
    end
    function varargout = bias_correlation_time_factor(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1739, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1740, self, varargin{1});
      end
    end
    function varargout = accelerometer_noise_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1741, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1742, self, varargin{1});
      end
    end
    function varargout = magnetometer_noise_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1743, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1744, self, varargin{1});
      end
    end
    function varargout = gyroscope_noise_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1745, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1746, self, varargin{1});
      end
    end
    function varargout = gyro_bias_noise_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1747, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1748, self, varargin{1});
      end
    end
    function varargout = initial_orientation_error_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1749, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1750, self, varargin{1});
      end
    end
    function varargout = initial_ang_vel_error_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1751, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1752, self, varargin{1});
      end
    end
    function varargout = initial_gyro_bias_error_variance(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1753, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1754, self, varargin{1});
      end
    end
    function varargout = use_magnetometer_measurements(self, varargin)
      narginchk(1, 2)
      if nargin==1
        nargoutchk(0, 1)
        varargout{1} = iDynTreeMEX(1755, self);
      else
        nargoutchk(0, 0)
        iDynTreeMEX(1756, self, varargin{1});
      end
    end
    function self = AttitudeQuaternionEKFParameters(varargin)
      if nargin==1 && strcmp(class(varargin{1}),'SwigRef')
        if ~isnull(varargin{1})
          self.swigPtr = varargin{1}.swigPtr;
        end
      else
        tmp = iDynTreeMEX(1757, varargin{:});
        self.swigPtr = tmp.swigPtr;
        tmp.SwigClear();
      end
    end
    function delete(self)
      if self.swigPtr
        iDynTreeMEX(1758, self);
        self.SwigClear();
      end
    end
  end
  methods(Static)
  end
end
