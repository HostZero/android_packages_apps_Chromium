.class public Lorg/chromium/mojo/system/ResultAnd;
.super Ljava/lang/Object;
.source "ResultAnd.java"


# instance fields
.field private final mMojoResult:I

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/chromium/mojo/system/ResultAnd;->mMojoResult:I

    .line 18
    iput-object p2, p0, Lorg/chromium/mojo/system/ResultAnd;->mValue:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public getMojoResult()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lorg/chromium/mojo/system/ResultAnd;->mMojoResult:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/chromium/mojo/system/ResultAnd;->mValue:Ljava/lang/Object;

    return-object v0
.end method
