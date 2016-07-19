.class Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;
.super Ljava/lang/Object;
.source "ReplicaInputConnection.java"


# instance fields
.field public final compositionEnd:I

.field public final compositionStart:I

.field public final selectionEnd:I

.field public final selectionStart:I

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;->text:Ljava/lang/String;

    .line 491
    iput p2, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;->selectionStart:I

    .line 492
    iput p3, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;->selectionEnd:I

    .line 493
    iput p4, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;->compositionStart:I

    .line 494
    iput p5, p0, Lorg/chromium/content/browser/input/ReplicaInputConnection$ImeState;->compositionEnd:I

    .line 495
    return-void
.end method
