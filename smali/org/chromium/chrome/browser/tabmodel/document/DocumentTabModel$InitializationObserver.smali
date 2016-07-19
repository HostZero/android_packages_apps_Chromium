.class public abstract Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;
.super Ljava/lang/Object;
.source "DocumentTabModel.java"


# instance fields
.field private final mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    .line 73
    return-void
.end method


# virtual methods
.method public abstract isCanceled()Z
.end method

.method public abstract isSatisfied(I)Z
.end method

.method protected abstract runImmediately()V
.end method

.method public final runWhenReady()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 87
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->getCurrentInitializationStage()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->isSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->runImmediately()V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;

    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel;->addInitializationObserver(Lorg/chromium/chrome/browser/tabmodel/document/DocumentTabModel$InitializationObserver;)V

    goto :goto_0
.end method
