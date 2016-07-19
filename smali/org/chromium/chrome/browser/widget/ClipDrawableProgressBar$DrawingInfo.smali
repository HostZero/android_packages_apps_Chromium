.class public Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;
.super Ljava/lang/Object;
.source "ClipDrawableProgressBar.java"


# instance fields
.field public progressBarBackgroundColor:I

.field public final progressBarBackgroundRect:Landroid/graphics/Rect;

.field public progressBarColor:I

.field public final progressBarRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarRect:Landroid/graphics/Rect;

    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/ClipDrawableProgressBar$DrawingInfo;->progressBarBackgroundRect:Landroid/graphics/Rect;

    return-void
.end method
