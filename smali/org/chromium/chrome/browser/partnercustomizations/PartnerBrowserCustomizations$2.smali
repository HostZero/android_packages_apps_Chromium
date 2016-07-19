.class final Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$2;
.super Ljava/lang/Object;
.source "PartnerBrowserCustomizations.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$initializeAsyncTask:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$2;->val$initializeAsyncTask:Landroid/os/AsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$2;->val$initializeAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 241
    return-void
.end method
