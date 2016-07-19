.class public Lorg/chromium/chrome/browser/firstrun/FirstRunPage;
.super Landroid/app/Fragment;
.source "FirstRunPage.java"


# instance fields
.field private mProperties:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->mProperties:Landroid/os/Bundle;

    return-void
.end method

.method public static addProperties(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "ThisPageNumber"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    return-object p0
.end method


# virtual methods
.method protected advanceToNextPage()V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;->advanceToNextPage()V

    .line 95
    return-void
.end method

.method protected getPageDelegate()Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/firstrun/FirstRunPageDelegate;

    return-object v0
.end method

.method protected getProperties()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->mProperties:Landroid/os/Bundle;

    return-object v0
.end method

.method public interceptBackPressed()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    if-eqz p1, :cond_0

    .line 48
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->mProperties:Landroid/os/Bundle;

    .line 54
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->mProperties:Landroid/os/Bundle;

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->mProperties:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lorg/chromium/chrome/browser/firstrun/FirstRunPage;->mProperties:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method public shouldSkipPageOnCreate(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
