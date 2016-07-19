.class final Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;
.super Landroid/os/AsyncTask;
.source "WebappDataStorage.java"


# instance fields
.field private final mSplashImage:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;->mSplashImage:Landroid/graphics/Bitmap;

    .line 197
    return-void
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->access$100(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "splash_icon"

    iget-object v2, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$UpdateTask;->mSplashImage:Landroid/graphics/Bitmap;

    invoke-static {v2}, Lorg/chromium/chrome/browser/ShortcutHelper;->encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    const/4 v0, 0x0

    return-object v0
.end method
