.class Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$2;
.super Ljava/lang/Object;
.source "GoogleApiClientHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$2;->this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper$2;->this$0:Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;

    # getter for: Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->mClient:Lcom/google/android/gms/common/api/g;
    invoke-static {v0}, Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;->access$200(Lorg/chromium/chrome/browser/gcore/GoogleApiClientHelper;)Lcom/google/android/gms/common/api/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/g;->b()V

    .line 227
    return-void
.end method
