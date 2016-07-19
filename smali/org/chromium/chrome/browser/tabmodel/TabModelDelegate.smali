.class public interface abstract Lorg/chromium/chrome/browser/tabmodel/TabModelDelegate;
.super Ljava/lang/Object;
.source "TabModelDelegate.java"


# virtual methods
.method public abstract closeAllTabsRequest(Z)Z
.end method

.method public abstract getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
.end method

.method public abstract getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;
.end method

.method public abstract isInOverviewMode()Z
.end method

.method public abstract isSessionRestoreInProgress()Z
.end method

.method public abstract requestToShowTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
.end method

.method public abstract selectModel(Z)V
.end method
