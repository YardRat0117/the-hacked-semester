# Where to run?

Modern development often involves running code in isolated environments. This section covers
containerization and virtualization.

## Topics

- **[Docker](docker.md)** – Container platform
- **[Virtual Machine](virtual-machine.md)** – Full system virtualization

## Philosophy

Your runtime environments should:

- Be reproducible (same environment everywhere)
- Be isolated (don't interfere with host system)
- Be efficient (minimize resource usage)
- Be easy to manage (create, run, and destroy)

## Getting Started

1. Understand the difference between containers and VMs
2. Learn Docker basics for application packaging
3. Use VMs for full system isolation
4. Choose the right tool for each situation

## Pro Tips

- **Use Docker for applications**: Lightweight and portable
- **Use VMs for full OS environments**: When you need kernel-level isolation
- **Version your container images**: Treat them like code
- **Optimize image sizes**: Smaller images are faster to transfer and run

---

Next: [Docker →](docker.md)
