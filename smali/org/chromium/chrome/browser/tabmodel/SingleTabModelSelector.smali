.class public Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;
.super Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;
.source "SingleTabModelSelector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mApplicationContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-direct {v0, p1, p2, p3}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/chromium/chrome/browser/tabmodel/TabModel;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    aput-object v1, v0, v2

    invoke-virtual {p0, v2, v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->initialize(Z[Lorg/chromium/chrome/browser/tabmodel/TabModel;)V

    .line 27
    return-void
.end method


# virtual methods
.method public closeAllTabs()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->closeAllTabs()V

    .line 68
    return-void
.end method

.method public getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 2

    .prologue
    .line 46
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getCurrentModel()Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 47
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    return-object v0
.end method

.method public getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Lorg/chromium/chrome/browser/tabmodel/TabModelSelectorBase;->getModel(Z)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    return-object v0
.end method

.method public getModelAt(I)Lorg/chromium/chrome/browser/tabmodel/TabModel;
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    return-object v0
.end method

.method public getTabById(I)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalTabCount()I
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->getCount()I

    move-result v0

    return v0
.end method

.method public isIncognitoSelected()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->isIncognito()Z

    move-result v0

    return v0
.end method

.method public openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;Lorg/chromium/chrome/browser/tab/Tab;Z)Lorg/chromium/chrome/browser/tab/Tab;
    .locals 3

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 59
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public selectModel(Z)V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->isIncognito()Z

    move-result v0

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public setTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->mTabModel:Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModel;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tabmodel/SingleTabModelSelector;->markTabStateInitialized()V

    .line 32
    return-void
.end method
