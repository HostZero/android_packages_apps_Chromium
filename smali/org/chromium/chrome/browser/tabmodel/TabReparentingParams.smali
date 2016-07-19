.class public Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;
.super Ljava/lang/Object;
.source "TabReparentingParams.java"

# interfaces
.implements Lorg/chromium/chrome/browser/tabmodel/AsyncTabParams;


# instance fields
.field private final mFinalizeCallback:Ljava/lang/Runnable;

.field private final mOriginalIntent:Landroid/content/Intent;

.field private final mTabToReparent:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;Landroid/content/Intent;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->mTabToReparent:Lorg/chromium/chrome/browser/tab/Tab;

    .line 27
    iput-object p2, p0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->mOriginalIntent:Landroid/content/Intent;

    .line 28
    iput-object p3, p0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->mFinalizeCallback:Ljava/lang/Runnable;

    .line 29
    return-void
.end method


# virtual methods
.method public finalizeTabReparenting()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->mFinalizeCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 61
    return-void
.end method

.method public getLoadUrlParams()Lorg/chromium/content_public/browser/LoadUrlParams;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOriginalIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->mOriginalIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabToReparent()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/TabReparentingParams;->mTabToReparent:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public getWebContents()Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
