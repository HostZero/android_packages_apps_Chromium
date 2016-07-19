.class public Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;
.super Ljava/lang/Object;
.source "Interface.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/ConnectionErrorHandler;
.implements Lorg/chromium/mojo/bindings/Interface$Proxy$Handler;


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

.field private final mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

.field private mVersion:I


# direct methods
.method protected constructor <init>(Lorg/chromium/mojo/system/Core;Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;)V
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    .line 116
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mCore:Lorg/chromium/mojo/system/Core;

    .line 117
    iput-object p2, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;)I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return v0
.end method

.method static synthetic access$002(Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;I)I
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    invoke-interface {v0}, Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;->close()V

    .line 162
    return-void
.end method

.method public getCore()Lorg/chromium/mojo/system/Core;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mCore:Lorg/chromium/mojo/system/Core;

    return-object v0
.end method

.method public getMessageReceiver()Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    return v0
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mErrorHandler:Lorg/chromium/mojo/bindings/ConnectionErrorHandler;

    invoke-interface {v0, p1}, Lorg/chromium/mojo/bindings/ConnectionErrorHandler;->onConnectionError(Lorg/chromium/mojo/system/MojoException;)V

    .line 154
    :cond_0
    return-void
.end method

.method public passHandle()Lorg/chromium/mojo/system/MessagePipeHandle;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mMessageReceiver:Lorg/chromium/mojo/bindings/MessageReceiverWithResponder;

    check-cast v0, Lorg/chromium/mojo/bindings/HandleOwner;

    .line 172
    invoke-interface {v0}, Lorg/chromium/mojo/bindings/HandleOwner;->passHandle()Lorg/chromium/mojo/system/Handle;

    move-result-object v0

    check-cast v0, Lorg/chromium/mojo/system/MessagePipeHandle;

    return-object v0
.end method

.method setVersion(I)V
    .locals 0

    .prologue
    .line 121
    iput p1, p0, Lorg/chromium/mojo/bindings/Interface$AbstractProxy$HandlerImpl;->mVersion:I

    .line 122
    return-void
.end method
