.class Lorg/chromium/sync/signin/SystemAccountManagerDelegate$2;
.super Ljava/lang/Object;
.source "SystemAccountManagerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

.field final synthetic val$callback:Lorg/chromium/base/Callback;


# direct methods
.method constructor <init>(Lorg/chromium/sync/signin/SystemAccountManagerDelegate;Lorg/chromium/base/Callback;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$2;->this$0:Lorg/chromium/sync/signin/SystemAccountManagerDelegate;

    iput-object p2, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$2;->val$callback:Lorg/chromium/base/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/sync/signin/SystemAccountManagerDelegate$2;->val$callback:Lorg/chromium/base/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    .line 116
    return-void
.end method
