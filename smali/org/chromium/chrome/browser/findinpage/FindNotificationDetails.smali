.class public Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;
.super Ljava/lang/Object;
.source "FindNotificationDetails.java"


# instance fields
.field public final activeMatchOrdinal:I

.field public final finalUpdate:Z

.field public final numberOfMatches:I

.field public final rendererSelectionRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;IZ)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->numberOfMatches:I

    .line 35
    iput-object p2, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->rendererSelectionRect:Landroid/graphics/Rect;

    .line 36
    iput p3, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->activeMatchOrdinal:I

    .line 37
    iput-boolean p4, p0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;->finalUpdate:Z

    .line 38
    return-void
.end method
