.class public interface abstract Lorg/chromium/chrome/browser/tabmodel/TabModel;
.super Ljava/lang/Object;
.source "TabModel.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabList;


# virtual methods
.method public abstract addObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
.end method

.method public abstract addTab(Lorg/chromium/chrome/browser/tab/Tab;ILorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
.end method

.method public abstract cancelTabClosure(I)V
.end method

.method public abstract closeAllTabs()V
.end method

.method public abstract closeAllTabs(ZZ)V
.end method

.method public abstract closeTab(Lorg/chromium/chrome/browser/tab/Tab;)Z
.end method

.method public abstract closeTab(Lorg/chromium/chrome/browser/tab/Tab;ZZZ)Z
.end method

.method public abstract commitAllTabClosures()V
.end method

.method public abstract commitTabClosure(I)V
.end method

.method public abstract destroy()V
.end method

.method public abstract getComprehensiveModel()Lorg/chromium/chrome/browser/tabmodel/TabList;
.end method

.method public abstract getNextTabIfClosed(I)Lorg/chromium/chrome/browser/tab/Tab;
.end method

.method public abstract getProfile()Lorg/chromium/chrome/browser/profiles/Profile;
.end method

.method public abstract moveTab(II)V
.end method

.method public abstract removeObserver(Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;)V
.end method

.method public abstract removeTab(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract setIndex(ILorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;)V
.end method

.method public abstract supportsPendingClosures()Z
.end method
