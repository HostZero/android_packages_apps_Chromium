.class public Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;
.super Ljava/lang/Object;
.source "GSAContextDisplaySelection.java"


# instance fields
.field public final content:Ljava/lang/String;

.field public final encoding:Ljava/lang/String;

.field public final endOffset:I

.field public final startOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;->encoding:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;->content:Ljava/lang/String;

    .line 27
    iput p3, p0, Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;->startOffset:I

    .line 28
    iput p4, p0, Lorg/chromium/chrome/browser/gsa/GSAContextDisplaySelection;->endOffset:I

    .line 29
    return-void
.end method
