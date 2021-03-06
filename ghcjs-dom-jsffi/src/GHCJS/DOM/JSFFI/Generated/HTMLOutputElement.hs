{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLOutputElement
       (js_checkValidity, checkValidity, checkValidity_,
        js_setCustomValidity, setCustomValidity, js_getHtmlFor, getHtmlFor,
        getHtmlForUnsafe, getHtmlForUnchecked, js_getForm, getForm,
        getFormUnsafe, getFormUnchecked, js_setName, setName, js_getName,
        getName, js_getType, getType, js_setDefaultValue, setDefaultValue,
        js_getDefaultValue, getDefaultValue, getDefaultValueUnsafe,
        getDefaultValueUnchecked, js_setValue, setValue, js_getValue,
        getValue, getValueUnsafe, getValueUnchecked, js_getWillValidate,
        getWillValidate, js_getValidity, getValidity, getValidityUnsafe,
        getValidityUnchecked, js_getValidationMessage,
        getValidationMessage, js_getLabels, getLabels, getLabelsUnsafe,
        getLabelsUnchecked, HTMLOutputElement(..), gTypeHTMLOutputElement)
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
 
foreign import javascript unsafe
        "($1[\"checkValidity\"]() ? 1 : 0)" js_checkValidity ::
        HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
checkValidity :: (MonadIO m) => HTMLOutputElement -> m Bool
checkValidity self = liftIO (js_checkValidity (self))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.checkValidity Mozilla HTMLOutputElement.checkValidity documentation> 
checkValidity_ :: (MonadIO m) => HTMLOutputElement -> m ()
checkValidity_ self = liftIO (void (js_checkValidity (self)))
 
foreign import javascript unsafe "$1[\"setCustomValidity\"]($2)"
        js_setCustomValidity ::
        HTMLOutputElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.setCustomValidity Mozilla HTMLOutputElement.setCustomValidity documentation> 
setCustomValidity ::
                  (MonadIO m, ToJSString error) =>
                    HTMLOutputElement -> Maybe error -> m ()
setCustomValidity self error
  = liftIO (js_setCustomValidity (self) (toMaybeJSString error))
 
foreign import javascript unsafe "$1[\"htmlFor\"]" js_getHtmlFor ::
        HTMLOutputElement -> IO (Nullable DOMSettableTokenList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
getHtmlFor ::
           (MonadIO m) => HTMLOutputElement -> m (Maybe DOMSettableTokenList)
getHtmlFor self
  = liftIO (nullableToMaybe <$> (js_getHtmlFor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
getHtmlForUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   HTMLOutputElement -> m DOMSettableTokenList
getHtmlForUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getHtmlFor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.htmlFor Mozilla HTMLOutputElement.htmlFor documentation> 
getHtmlForUnchecked ::
                    (MonadIO m) => HTMLOutputElement -> m DOMSettableTokenList
getHtmlForUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getHtmlFor (self)))
 
foreign import javascript unsafe "$1[\"form\"]" js_getForm ::
        HTMLOutputElement -> IO (Nullable HTMLFormElement)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
getForm ::
        (MonadIO m) => HTMLOutputElement -> m (Maybe HTMLFormElement)
getForm self = liftIO (nullableToMaybe <$> (js_getForm (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
getFormUnsafe ::
              (MonadIO m, HasCallStack) => HTMLOutputElement -> m HTMLFormElement
getFormUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getForm (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.form Mozilla HTMLOutputElement.form documentation> 
getFormUnchecked ::
                 (MonadIO m) => HTMLOutputElement -> m HTMLFormElement
getFormUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getForm (self)))
 
foreign import javascript unsafe "$1[\"name\"] = $2;" js_setName ::
        HTMLOutputElement -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
setName ::
        (MonadIO m, ToJSString val) => HTMLOutputElement -> val -> m ()
setName self val = liftIO (js_setName (self) (toJSString val))
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.name Mozilla HTMLOutputElement.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"type\"]" js_getType ::
        HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.type Mozilla HTMLOutputElement.type documentation> 
getType ::
        (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getType self = liftIO (fromJSString <$> (js_getType (self)))
 
foreign import javascript unsafe "$1[\"defaultValue\"] = $2;"
        js_setDefaultValue ::
        HTMLOutputElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
setDefaultValue ::
                (MonadIO m, ToJSString val) =>
                  HTMLOutputElement -> Maybe val -> m ()
setDefaultValue self val
  = liftIO (js_setDefaultValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"defaultValue\"]"
        js_getDefaultValue :: HTMLOutputElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
getDefaultValue ::
                (MonadIO m, FromJSString result) =>
                  HTMLOutputElement -> m (Maybe result)
getDefaultValue self
  = liftIO (fromMaybeJSString <$> (js_getDefaultValue (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
getDefaultValueUnsafe ::
                      (MonadIO m, HasCallStack, FromJSString result) =>
                        HTMLOutputElement -> m result
getDefaultValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getDefaultValue (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.defaultValue Mozilla HTMLOutputElement.defaultValue documentation> 
getDefaultValueUnchecked ::
                         (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getDefaultValueUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getDefaultValue (self)))
 
foreign import javascript unsafe "$1[\"value\"] = $2;" js_setValue
        :: HTMLOutputElement -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
setValue ::
         (MonadIO m, ToJSString val) =>
           HTMLOutputElement -> Maybe val -> m ()
setValue self val
  = liftIO (js_setValue (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"value\"]" js_getValue ::
        HTMLOutputElement -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
getValue ::
         (MonadIO m, FromJSString result) =>
           HTMLOutputElement -> m (Maybe result)
getValue self = liftIO (fromMaybeJSString <$> (js_getValue (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
getValueUnsafe ::
               (MonadIO m, HasCallStack, FromJSString result) =>
                 HTMLOutputElement -> m result
getValueUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getValue (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.value Mozilla HTMLOutputElement.value documentation> 
getValueUnchecked ::
                  (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getValueUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getValue (self)))
 
foreign import javascript unsafe "($1[\"willValidate\"] ? 1 : 0)"
        js_getWillValidate :: HTMLOutputElement -> IO Bool

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.willValidate Mozilla HTMLOutputElement.willValidate documentation> 
getWillValidate :: (MonadIO m) => HTMLOutputElement -> m Bool
getWillValidate self = liftIO (js_getWillValidate (self))
 
foreign import javascript unsafe "$1[\"validity\"]" js_getValidity
        :: HTMLOutputElement -> IO (Nullable ValidityState)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
getValidity ::
            (MonadIO m) => HTMLOutputElement -> m (Maybe ValidityState)
getValidity self
  = liftIO (nullableToMaybe <$> (js_getValidity (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
getValidityUnsafe ::
                  (MonadIO m, HasCallStack) => HTMLOutputElement -> m ValidityState
getValidityUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getValidity (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validity Mozilla HTMLOutputElement.validity documentation> 
getValidityUnchecked ::
                     (MonadIO m) => HTMLOutputElement -> m ValidityState
getValidityUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getValidity (self)))
 
foreign import javascript unsafe "$1[\"validationMessage\"]"
        js_getValidationMessage :: HTMLOutputElement -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.validationMessage Mozilla HTMLOutputElement.validationMessage documentation> 
getValidationMessage ::
                     (MonadIO m, FromJSString result) => HTMLOutputElement -> m result
getValidationMessage self
  = liftIO (fromJSString <$> (js_getValidationMessage (self)))
 
foreign import javascript unsafe "$1[\"labels\"]" js_getLabels ::
        HTMLOutputElement -> IO (Nullable NodeList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
getLabels :: (MonadIO m) => HTMLOutputElement -> m (Maybe NodeList)
getLabels self = liftIO (nullableToMaybe <$> (js_getLabels (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
getLabelsUnsafe ::
                (MonadIO m, HasCallStack) => HTMLOutputElement -> m NodeList
getLabelsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getLabels (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement.labels Mozilla HTMLOutputElement.labels documentation> 
getLabelsUnchecked ::
                   (MonadIO m) => HTMLOutputElement -> m NodeList
getLabelsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getLabels (self)))