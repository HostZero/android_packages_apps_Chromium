.class public Lorg/chromium/policy/AppRestrictionsProvider;
.super Lorg/chromium/policy/AbstractAppRestrictionsProvider;
.source "AppRestrictionsProvider.java"


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/chromium/policy/AbstractAppRestrictionsProvider;-><init>(Landroid/content/Context;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 26
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lorg/chromium/policy/AppRestrictionsProvider;->mUserManager:Landroid/os/UserManager;

    .line 30
    :goto_0
    return-void

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/policy/AppRestrictionsProvider;->mUserManager:Landroid/os/UserManager;

    goto :goto_0
.end method


# virtual methods
.method protected getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/chromium/policy/AppRestrictionsProvider;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/policy/AppRestrictionsProvider;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected getRestrictionChangeIntentAction()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "android.intent.action.APPLICATION_RESTRICTIONS_CHANGED"

    goto :goto_0
.end method
