.class public Lorg/chromium/chrome/browser/tabmodel/EmptyTabModelSelectorObserver;
.super Ljava/lang/Object;
.source "EmptyTabModelSelectorObserver.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onNewTabCreated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method public onTabModelSelected(Lorg/chromium/chrome/browser/tabmodel/TabModel;Lorg/chromium/chrome/browser/tabmodel/TabModel;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public onTabStateInitialized()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
