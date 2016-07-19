.class public Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelObserver;
.super Ljava/lang/Object;
.source "EmptyTabModelObserver.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModelObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allTabsClosureCommitted()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public allTabsPendingClosure(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public didAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public didCloseTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public didMoveTab(Lorg/chromium/chrome/browser/tab/Tab;II)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public didSelectTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabSelectionType;I)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public tabClosureCommitted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public tabClosureUndone(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public tabPendingClosure(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public tabRemoved(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public willAddTab(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;)V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public willCloseTab(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
