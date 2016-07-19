.class Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;
.super Ljava/lang/Object;
.source "ChromeBrowserProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    iput-object p2, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1185
    iget-object v0, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;->this$0:Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/provider/ChromeBrowserProvider$4;->val$uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1186
    return-void
.end method
