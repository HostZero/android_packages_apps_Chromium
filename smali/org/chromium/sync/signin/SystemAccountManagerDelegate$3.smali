.class Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;
.super Ljava/lang/Object;
.source "SystemAccountManagerDelegate.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

.field final synthetic val$callback:Lorg/chromium/base/Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-class v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/sync/signin/SystemAccountManagerDelegate;Lorg/chromium/base/Callback;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;->this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    iput-object p2, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-boolean v0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 126
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 132
    :goto_0
    iget-object v1, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$3;->val$callback:Lorg/chromium/base/Callback;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 133
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :goto_1
    const-string/jumbo v2, "Auth"

    const-string/jumbo v3, "Error while checking features: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 131
    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    const-string/jumbo v0, "Auth"

    const-string/jumbo v2, "Checking features was cancelled. This should not happen."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    .line 127
    :catch_2
    move-exception v0

    goto :goto_1
.end method
