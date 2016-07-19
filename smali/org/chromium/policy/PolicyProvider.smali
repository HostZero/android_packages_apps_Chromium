.class public abstract Lorg/chromium/policy/PolicyProvider;
.super Ljava/lang/Object;
.source "PolicyProvider.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mCombinedPolicyProvider:Lorg/chromium/policy/CombinedPolicyProvider;

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lorg/chromium/policy/PolicyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/policy/PolicyProvider;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/policy/PolicyProvider;->mSource:I

    .line 19
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public notifySettingsAvailable(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 23
    iget-object v0, p0, Lorg/chromium/policy/PolicyProvider;->mCombinedPolicyProvider:Lorg/chromium/policy/CombinedPolicyProvider;

    iget v1, p0, Lorg/chromium/policy/PolicyProvider;->mSource:I

    invoke-virtual {v0, v1, p1}, Lorg/chromium/policy/CombinedPolicyProvider;->onSettingsAvailable(ILandroid/os/Bundle;)V

    .line 24
    return-void
.end method

.method public abstract refresh()V
.end method

.method final setManagerAndSource(Lorg/chromium/policy/CombinedPolicyProvider;I)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lorg/chromium/policy/PolicyProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/chromium/policy/PolicyProvider;->mSource:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 53
    :cond_0
    sget-boolean v0, Lorg/chromium/policy/PolicyProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_1
    iput p2, p0, Lorg/chromium/policy/PolicyProvider;->mSource:I

    .line 55
    sget-boolean v0, Lorg/chromium/policy/PolicyProvider;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/policy/PolicyProvider;->mCombinedPolicyProvider:Lorg/chromium/policy/CombinedPolicyProvider;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_2
    iput-object p1, p0, Lorg/chromium/policy/PolicyProvider;->mCombinedPolicyProvider:Lorg/chromium/policy/CombinedPolicyProvider;

    .line 57
    invoke-virtual {p0}, Lorg/chromium/policy/PolicyProvider;->startListeningForPolicyChanges()V

    .line 58
    return-void
.end method

.method protected startListeningForPolicyChanges()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method protected terminateIncognitoSession()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lorg/chromium/policy/PolicyProvider;->mCombinedPolicyProvider:Lorg/chromium/policy/CombinedPolicyProvider;

    invoke-virtual {v0}, Lorg/chromium/policy/CombinedPolicyProvider;->terminateIncognitoSession()V

    .line 31
    return-void
.end method
