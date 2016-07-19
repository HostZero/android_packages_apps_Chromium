.class Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;
.super Ljava/lang/Object;
.source "ProfileDataCache.java"


# instance fields
.field public fullName:Ljava/lang/String;

.field public givenName:Ljava/lang/String;

.field public picture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;->picture:Landroid/graphics/Bitmap;

    .line 39
    iput-object p2, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;->fullName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lorg/chromium/chrome/browser/firstrun/ProfileDataCache$CacheEntry;->givenName:Ljava/lang/String;

    .line 41
    return-void
.end method
