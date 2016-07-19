.class public interface abstract Lorg/chromium/mojom/mojo/NetworkService;
.super Ljava/lang/Object;
.source "NetworkService.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/NetworkService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/NetworkService;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract createHttpServer(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojom/mojo/HttpServerDelegate;Lorg/chromium/mojom/mojo/NetworkService$CreateHttpServerResponse;)V
.end method

.method public abstract createTcpBoundSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpBoundSocketResponse;)V
.end method

.method public abstract createTcpConnectedSocket(Lorg/chromium/mojom/mojo/NetAddress;Lorg/chromium/mojo/system/DataPipe$ConsumerHandle;Lorg/chromium/mojo/system/DataPipe$ProducerHandle;Lorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/NetworkService$CreateTcpConnectedSocketResponse;)V
.end method

.method public abstract createUdpSocket(Lorg/chromium/mojo/bindings/InterfaceRequest;)V
.end method

.method public abstract getMimeTypeFromFile(Ljava/lang/String;Lorg/chromium/mojom/mojo/NetworkService$GetMimeTypeFromFileResponse;)V
.end method
