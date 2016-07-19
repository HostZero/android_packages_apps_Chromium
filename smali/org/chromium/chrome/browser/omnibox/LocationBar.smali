.class public interface abstract Lorg/chromium/chrome/browser/omnibox/LocationBar;
.super Ljava/lang/Object;
.source "LocationBar.java"

# interfaces
.implements Lorg/chromium/chrome/browser/omnibox/UrlBar$UrlBarDelegate;


# virtual methods
.method public abstract getContainerView()Landroid/view/View;
.end method

.method public abstract getFirstUrlBarFocusTime()J
.end method

.method public abstract getMenuAnchor()Landroid/view/View;
.end method

.method public abstract hideSuggestions()V
.end method

.method public abstract initializeControls(Lorg/chromium/chrome/browser/WindowDelegate;Lorg/chromium/chrome/browser/toolbar/ActionModeController$ActionBarDelegate;Lorg/chromium/ui/base/WindowAndroid;)V
.end method

.method public abstract onNativeLibraryReady()V
.end method

.method public abstract onTabLoadingNTP(Lorg/chromium/chrome/browser/ntp/NewTabPage;)V
.end method

.method public abstract revertChanges()V
.end method

.method public abstract setAutocompleteProfile(Lorg/chromium/chrome/browser/profiles/Profile;)V
.end method

.method public abstract setDefaultTextEditActionModeCallback(Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;)V
.end method

.method public abstract setMenuButtonHelper(Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setTitleToPageTitle()V
.end method

.method public abstract setToolbarDataProvider(Lorg/chromium/chrome/browser/toolbar/ToolbarDataProvider;)V
.end method

.method public abstract setUrlBarFocus(Z)V
.end method

.method public abstract setUrlFocusChangeListener(Lorg/chromium/chrome/browser/omnibox/UrlFocusChangeListener;)V
.end method

.method public abstract setUrlToPageUrl()V
.end method

.method public abstract updateLoadingState(Z)V
.end method

.method public abstract updateMicButtonState()V
.end method

.method public abstract updateSecurityIcon(I)V
.end method

.method public abstract updateVisualsForState()V
.end method
