.class public Lorg/chromium/mojo/bindings/InterfaceRequest;
.super Ljava/lang/Object;
.source "InterfaceRequest.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/HandleOwner;


# instance fields
.field private final mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;


# direct methods
.method constructor <init>(Lorg/chromium/mojo/system/MessagePipeHandle;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    .line 32
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->close()V

    .line 48
    return-void
.end method

.method public bridge synthetic passHandle()Lorg/chromium/mojo/system/Handle;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/InterfaceRequest;->passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/mojo/bindings/InterfaceRequest;->mHandle:Lorg/chromium/mojo/system/MessagePipeHandle;

    invoke-interface {v0}, Lorg/chromium/mojo/system/MessagePipeHandle;->pass()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    return-object v0
.end method
