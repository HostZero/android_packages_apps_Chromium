.class Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;
.super Ljava/lang/Object;
.source "LargeIconBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

.field final synthetic val$callback:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

.field final synthetic val$pageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/favicon/LargeIconBridge;Ljava/lang/String;Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;->this$0:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    iput-object p2, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;->val$pageUrl:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;->val$callback:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLargeIconAvailable(Landroid/graphics/Bitmap;I)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;->this$0:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    # getter for: Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->mFaviconCache:Landroid/util/LruCache;
    invoke-static {v0}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge;->access$000(Lorg/chromium/chrome/browser/favicon/LargeIconBridge;)Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;->val$pageUrl:Ljava/lang/String;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$2;->val$callback:Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;

    invoke-interface {v0, p1, p2}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$LargeIconCallback;->onLargeIconAvailable(Landroid/graphics/Bitmap;I)V

    .line 109
    return-void
.end method
