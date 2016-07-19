.class public interface abstract Lorg/chromium/chrome/browser/tabmodel/TabModelSelector;
.super Ljava/lang/Object;
.source "TabModelSelector.java"


# virtual methods
.method public abstract addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeAllTabs(Z)V
.end method

.method public abstract closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
.end method

.method public abstract commitAllTabClosures()V
.end method

.method public abstract destroy()V
.end method

.method public abstract getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
.end method

.method public abstract getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;
.end method

.method public abstract getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
.end method

.method public abstract getModelForTabId(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
.end method

.method public abstract getModels()Ljava/util/List;
.end method

.method public abstract getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract getTotalTabCount()I
.end method

.method public abstract isIncognitoSelected()Z
.end method

.method public abstract isTabStateInitialized()Z
.end method

.method public abstract openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;)V
.end method

.method public abstract selectModel(Z)V
.end method

.method public abstract setCloseAllTabsDelegate(Lorg/chromium/chrome/browser/tabmodel/TabModelSelector$CloseAllTabsDelegate;)V
.end method
