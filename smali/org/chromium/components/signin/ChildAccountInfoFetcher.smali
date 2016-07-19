.class public final Lorg/chromium/components/signin/ChildAccountInfoFetcher;
.super Ljava/lang/Object;
.source "ChildAccountInfoFetcher.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000(JLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0, p1, p2, p3}, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->nativeSetIsChildAccount(JLjava/lang/String;Z)V

    return-void
.end method

.method private static fetch(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 29
    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    sget-boolean v1, Lorg/chromium/components/signin/ChildAccountInfoFetcher;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_0
    invoke-static {v0}, Lorg/chromium/sync/signin/AccountManagerHelper;->get(Landroid/content/Context;)Lorg/chromium/sync/signin/AccountManagerHelper;

    move-result-object v0

    .line 32
    invoke-static {p3}, Lorg/chromium/sync/signin/AccountManagerHelper;->createAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 33
    new-instance v2, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/chromium/components/signin/ChildAccountInfoFetcher$1;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/chromium/sync/signin/AccountManagerHelper;->checkChildAccount(Landroid/accounts/Account;Lorg/chromium/base/Callback;)V

    .line 39
    return-void
.end method

.method private static native nativeSetIsChildAccount(JLjava/lang/String;Z)V
.end method
