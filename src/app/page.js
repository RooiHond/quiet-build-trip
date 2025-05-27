export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center bg-green-50">
      <h1 className="text-4xl font-bold text-green-900">Quiet Build Trip</h1>
      <img
        src="/south-africa-map.svg"
        alt="Map of South Africa"
        className="my-8 w-200 h-auto"
      />
      <p className="text-lg text-green-800">
        Exploring the open road with my father.
      </p>
    </main>
  );
}
