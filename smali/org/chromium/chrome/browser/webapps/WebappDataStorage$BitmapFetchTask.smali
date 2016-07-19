.class final Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;
.super Landroid/os/AsyncTask;
.source "WebappDataStorage.java"


# instance fields
.field private final mCallback:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;

.field private final mKey:Ljava/lang/String;

.field final synthetic this$0:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;Ljava/lang/String;Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 176
    iput-object p2, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->mKey:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->mCallback:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;

    .line 178
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->this$0:Lorg/chromium/chrome/browser/webapps/WebappDataStorage;

    # getter for: Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage;->access$100(Lorg/chromium/chrome/browser/webapps/WebappDataStorage;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/chrome/browser/ShortcutHelper;->decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->mCallback:Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$FetchCallback;->onDataRetrieved(Ljava/lang/Object;)V

    .line 188
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 170
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/webapps/WebappDataStorage$BitmapFetchTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
