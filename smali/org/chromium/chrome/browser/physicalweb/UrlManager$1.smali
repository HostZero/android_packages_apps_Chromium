.class Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;
.super Landroid/os/AsyncTask;
.source "UrlManager.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/UrlManager;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 265
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/UrlManager$1;->this$0:Lorg/chromium/chrome/browser/physicalweb/UrlManager;

    # getter for: Lorg/chromium/chrome/browser/physicalweb/UrlManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lorg/chromium/chrome/browser/physicalweb/UrlManager;->access$000(Lorg/chromium/chrome/browser/physicalweb/UrlManager;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.chrome.browser.physicalweb.URL_CACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 270
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    const/4 v0, 0x0

    return-object v0
.end method
