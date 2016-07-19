.class public Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;
.super Ljava/lang/Object;
.source "MessagePipeHandle.java"


# instance fields
.field private mFlags:Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    sget-object v0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;->NONE:Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    iput-object v0, p0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;->mFlags:Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    return-void
.end method


# virtual methods
.method public getFlags()Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;->mFlags:Lorg/chromium/mojo/system/MessagePipeHandle$CreateFlags;

    return-object v0
.end method
