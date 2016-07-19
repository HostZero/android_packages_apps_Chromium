.class public abstract Lorg/chromium/mojo/bindings/Interface$Stub;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private final mImpl:Lorg/chromium/mojo/bindings/Interface;


# direct methods
.method public constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/Interface;)V
    .locals 0

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mCore:Lorg/chromium/mojo/system/Core;

    .line 283
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    .line 284
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/Interface;->close()V

    .line 306
    return-void
.end method

.method protected getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mCore:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method

.method protected getImpl()Lorg/chromium/mojo/bindings/Interface;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$Stub;->mImpl:Lorg/chromium/mojo/bindings/Interface;

    return-object v0
.end method
