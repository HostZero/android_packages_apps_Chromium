.class public Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;
.super Ljava/lang/Object;
.source "FindMatchRectsDetails.java"


# instance fields
.field public final activeRect:Landroid/graphics/RectF;

.field public final rects:[Landroid/graphics/RectF;

.field public final version:I


# direct methods
.method public constructor <init>(IILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->version:I

    .line 24
    new-array v0, p2, [Landroid/graphics/RectF;

    iput-object v0, p0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->rects:[Landroid/graphics/RectF;

    .line 25
    iput-object p3, p0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->activeRect:Landroid/graphics/RectF;

    .line 26
    return-void
.end method
