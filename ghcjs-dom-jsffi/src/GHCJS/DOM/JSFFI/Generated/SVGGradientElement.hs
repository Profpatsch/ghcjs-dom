{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGGradientElement
       (pattern SVG_SPREADMETHOD_UNKNOWN, pattern SVG_SPREADMETHOD_PAD,
        pattern SVG_SPREADMETHOD_REFLECT, pattern SVG_SPREADMETHOD_REPEAT,
        js_getGradientUnits, getGradientUnits, getGradientUnitsUnsafe,
        getGradientUnitsUnchecked, js_getGradientTransform,
        getGradientTransform, getGradientTransformUnsafe,
        getGradientTransformUnchecked, js_getSpreadMethod, getSpreadMethod,
        getSpreadMethodUnsafe, getSpreadMethodUnchecked,
        SVGGradientElement(..), gTypeSVGGradientElement,
        IsSVGGradientElement, toSVGGradientElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
pattern SVG_SPREADMETHOD_UNKNOWN = 0
pattern SVG_SPREADMETHOD_PAD = 1
pattern SVG_SPREADMETHOD_REFLECT = 2
pattern SVG_SPREADMETHOD_REPEAT = 3
 
foreign import javascript unsafe "$1[\"gradientUnits\"]"
        js_getGradientUnits ::
        SVGGradientElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
getGradientUnits ::
                 (MonadIO m, IsSVGGradientElement self) =>
                   self -> m (Maybe SVGAnimatedEnumeration)
getGradientUnits self
  = liftIO
      (nullableToMaybe <$>
         (js_getGradientUnits (toSVGGradientElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
getGradientUnitsUnsafe ::
                       (MonadIO m, IsSVGGradientElement self, HasCallStack) =>
                         self -> m SVGAnimatedEnumeration
getGradientUnitsUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getGradientUnits (toSVGGradientElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientUnits Mozilla SVGGradientElement.gradientUnits documentation> 
getGradientUnitsUnchecked ::
                          (MonadIO m, IsSVGGradientElement self) =>
                            self -> m SVGAnimatedEnumeration
getGradientUnitsUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getGradientUnits (toSVGGradientElement self)))
 
foreign import javascript unsafe "$1[\"gradientTransform\"]"
        js_getGradientTransform ::
        SVGGradientElement -> IO (Nullable SVGAnimatedTransformList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
getGradientTransform ::
                     (MonadIO m, IsSVGGradientElement self) =>
                       self -> m (Maybe SVGAnimatedTransformList)
getGradientTransform self
  = liftIO
      (nullableToMaybe <$>
         (js_getGradientTransform (toSVGGradientElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
getGradientTransformUnsafe ::
                           (MonadIO m, IsSVGGradientElement self, HasCallStack) =>
                             self -> m SVGAnimatedTransformList
getGradientTransformUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getGradientTransform (toSVGGradientElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.gradientTransform Mozilla SVGGradientElement.gradientTransform documentation> 
getGradientTransformUnchecked ::
                              (MonadIO m, IsSVGGradientElement self) =>
                                self -> m SVGAnimatedTransformList
getGradientTransformUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getGradientTransform (toSVGGradientElement self)))
 
foreign import javascript unsafe "$1[\"spreadMethod\"]"
        js_getSpreadMethod ::
        SVGGradientElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
getSpreadMethod ::
                (MonadIO m, IsSVGGradientElement self) =>
                  self -> m (Maybe SVGAnimatedEnumeration)
getSpreadMethod self
  = liftIO
      (nullableToMaybe <$>
         (js_getSpreadMethod (toSVGGradientElement self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
getSpreadMethodUnsafe ::
                      (MonadIO m, IsSVGGradientElement self, HasCallStack) =>
                        self -> m SVGAnimatedEnumeration
getSpreadMethodUnsafe self
  = liftIO
      ((nullableToMaybe <$>
          (js_getSpreadMethod (toSVGGradientElement self)))
         >>= maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGGradientElement.spreadMethod Mozilla SVGGradientElement.spreadMethod documentation> 
getSpreadMethodUnchecked ::
                         (MonadIO m, IsSVGGradientElement self) =>
                           self -> m SVGAnimatedEnumeration
getSpreadMethodUnchecked self
  = liftIO
      (fromJust . nullableToMaybe <$>
         (js_getSpreadMethod (toSVGGradientElement self)))