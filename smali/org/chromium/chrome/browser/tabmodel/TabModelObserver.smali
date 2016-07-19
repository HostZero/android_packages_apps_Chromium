.class public interface abstract Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;
.super Ljava/lang/Object;
.source "TabModelObserver.java"


# virtual methods
.method public abstract allTabsClosureCommitted()V
.end method

.method public abstract allTabsPendingClosure(Ljava/util/List;)V
.end method

.method public abstract didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
.end method

.method public abstract didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
.end method

.method public abstract didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
.end method

.method public abstract tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
.end method

.method public abstract willAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
.end method

.method public abstract willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
.end method
