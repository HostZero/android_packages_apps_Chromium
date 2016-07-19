.class public interface abstract Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;
.super Ljava/lang/Object;
.source "ShellClient.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/ShellClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract acceptConnection(Lorg/chromium/mojom/mojo/shell/mojom/Identity;ILorg/chromium/mojo/bindings/InterfaceRequest;Lorg/chromium/mojom/mojo/shell/mojom/InterfaceProvider;Lorg/chromium/mojom/mojo/shell/mojom/CapabilityRequest;Ljava/lang/String;)V
.end method

.method public abstract initialize(Lorg/chromium/mojom/mojo/shell/mojom/Identity;ILorg/chromium/mojom/mojo/shell/mojom/ShellClient$InitializeResponse;)V
.end method
