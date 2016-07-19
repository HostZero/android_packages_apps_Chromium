.class Lorg/chromium/chrome/browser/favicon/LargeIconBridge$1;
.super Landroid/util/LruCache;
.source "LargeIconBridge.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/favicon/LargeIconBridge;I)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$1;->this$0:Lorg/chromium/chrome/browser/favicon/LargeIconBridge;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 58
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/favicon/LargeIconBridge$1;->sizeOf(Ljava/lang/String;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method

.method protected sizeOf(Ljava/lang/String;Landroid/util/Pair;)I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 62
    :goto_0
    const/16 v1, 0x400

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 61
    :cond_0
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0
.end method
