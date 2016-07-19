.class final Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$3;
.super Ljava/lang/Object;
.source "PartnerBrowserCustomizations.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$3;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 272
    # getter for: Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->sInitializeAsyncCallbacks:Ljava/util/List;
    invoke-static {}, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations;->access$600()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$3;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/partnercustomizations/PartnerBrowserCustomizations$3;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 273
    :cond_0
    return-void
.end method
